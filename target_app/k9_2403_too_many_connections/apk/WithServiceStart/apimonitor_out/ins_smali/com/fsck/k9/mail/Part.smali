.class public interface abstract Lcom/fsck/k9/mail/Part;
.super Ljava/lang/Object;
.source "Part.java"
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract getBody()Lcom/fsck/k9/mail/Body;
.end method
.method public abstract getContentType()Ljava/lang/String;
.end method
.method public abstract getDisposition()Ljava/lang/String;
.end method
.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
.end method
.method public abstract getMimeType()Ljava/lang/String;
.end method
.method public abstract getSize()I
.end method
.method public abstract isMimeType(Ljava/lang/String;)Z
.end method
.method public abstract removeHeader(Ljava/lang/String;)V
.end method
.method public abstract setBody(Lcom/fsck/k9/mail/Body;)V
.end method
.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method