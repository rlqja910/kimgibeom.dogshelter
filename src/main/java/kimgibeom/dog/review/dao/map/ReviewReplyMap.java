package kimgibeom.dog.review.dao.map;

import java.util.List;

import kimgibeom.dog.review.domain.ReviewReply;

public interface ReviewReplyMap {
	List<ReviewReply> getReviewReplies();
	
	ReviewReply getReviewReply(int replyNum);
	
	int addReviewReply(ReviewReply reviewReply);
	
	int modifyReviewReply(ReviewReply reviewReply);
	
	int delReviewReply(int replyNum);
}
