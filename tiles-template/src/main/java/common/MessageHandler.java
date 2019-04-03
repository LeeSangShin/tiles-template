package common;

import java.util.Locale;

import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.context.support.ResourceBundleMessageSource;

public class MessageHandler {

	private MessageSourceAccessor msgAccessor = null;

	public MessageHandler() {
		org.springframework.context.support.ResourceBundleMessageSource bundle = new ResourceBundleMessageSource();
		bundle.setBasename("message/message");
		org.springframework.context.support.MessageSourceAccessor msgAcc = new MessageSourceAccessor(bundle);
		this.setMessageSourceAccessor(msgAcc);
	}

	public void setMessageSourceAccessor(MessageSourceAccessor msgAccessor) {
		this.msgAccessor = msgAccessor;
	}

	 public String getMessage(String key) {
	  return msgAccessor.getMessage(key, Locale.getDefault());
	}

	 public String getMessage(String key, Object... objs ) {
	  return msgAccessor.getMessage(key, objs, Locale.getDefault());
	}

}
