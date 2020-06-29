package kimgibeom.dog.review.service;

import java.util.List;

import kimgibeom.dog.review.domain.ReviewReply;

public interface ReviewReplyService {
	List<ReviewReply> readReviewReplies();
	
	ReviewReply readReviewReply(int replyNum);
	
	int writeReviewReply(ReviewReply reviewReply);
	
	int updateReviewReply(ReviewReply reviewReply);
	
	int removeReviewReply(int replyNum);
}
