package ru.kpfu.itis.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.forms.AnswerForm;
import ru.kpfu.itis.forms.DislikeForm;
import ru.kpfu.itis.forms.LikeForm;
import ru.kpfu.itis.forms.QuestionForm;
import ru.kpfu.itis.models.*;
import ru.kpfu.itis.repositories.AnswerRepository;
import ru.kpfu.itis.repositories.DislikeRepository;
import ru.kpfu.itis.repositories.LikeRepository;
import ru.kpfu.itis.repositories.QuestionRepository;

import java.util.List;

@Service
public class QuestionsAndAnswersServiceImpl implements QuestionsAndAnswersService {

    @Autowired
    private QuestionRepository questionRepository;
    @Autowired
    private AnswerRepository answerRepository;
    @Autowired
    private LikeRepository likeRepository;
    @Autowired
    private DislikeRepository dislikeRepository;

    @Override
    public Question createQuestion(QuestionForm questionForm) {
        Question build = Question.builder()
                .user(questionForm.getUser())
                .title(questionForm.getTitle())
                .text(questionForm.getText())
                .imagePath(questionForm.getImagePath())
                .build();
        return questionRepository.save(build);
    }

    @Override
    public Question findQuestionById(Long id) {
        Question question = questionRepository.findById(id).get();
        question.setAnswers(findAllAnswersByQuestion(question));
        return question;
    }

    @Override
    public List<Question> findAllQuestions() {
        List<Question> all = questionRepository.findAll();
        for (Question question : all) {
            question.setAnswers(findAllAnswersByQuestion(question));
        }
        return all;
    }

    @Override
    public List<Question> findAllQuestionsByUser(User user) {
        return questionRepository.findAllByUser(user);
    }

    @Override
    public Answer createAnswer(AnswerForm answerForm) {
        Answer build = Answer.builder()
                .user(answerForm.getUser())
                .text(answerForm.getText())
                .imagePath(answerForm.getImagePath())
                .question(answerForm.getQuestion())
                .build();
        return answerRepository.save(build);
    }

    @Override
    public Answer findAnswerById(Long id) {
        Answer answer = answerRepository.findById(id).get();
        answer.setLikes(likeRepository.findAllByAnswer(answer));
        answer.setDislikes(dislikeRepository.findAllByAnswer(answer));
        return answer;
    }

    @Override
    public List<Answer> findAllAnswersByQuestion(Question question) {
        List<Answer> allByQuestion = answerRepository.findAllByQuestion(question);
        for (Answer answer : allByQuestion) {
            answer.setLikes(likeRepository.findAllByAnswer(answer));
            answer.setDislikes(dislikeRepository.findAllByAnswer(answer));
        }
        return allByQuestion;
    }

    @Override
    public void likeAnswer(LikeForm likeForm) {
        Like build = Like.builder()
                .user(likeForm.getUser())
                .answer(likeForm.getAnswer())
                .build();
        likeRepository.save(build);
    }

    @Override
    public void dislikeAnswer(DislikeForm likeForm) {
        Dislike build = Dislike.builder()
                .user(likeForm.getUser())
                .answer(likeForm.getAnswer())
                .build();
        dislikeRepository.save(build);
    }
}
