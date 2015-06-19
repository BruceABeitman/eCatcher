.class public Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;
.super Ljava/lang/Object;
.source "LocalStore.java"
.implements Lcom/fsck/k9/mail/Body;
.field private mApplication:Landroid/app/Application;
.field private mUri:Landroid/net/Uri;
.method public constructor <init>(Landroid/net/Uri;Landroid/app/Application;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mApplication:Landroid/app/Application;
iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;
return-void
.end method
.method public getContentUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 5
:try_start_0
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mApplication:Landroid/app/Application;
invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;
invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
:try_end_b
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_b} :catch_d
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_18
move-result-object v2
:goto_c
return-object v2
:catch_d
move-exception v2
move-object v0, v2
new-instance v2, Ljava/io/ByteArrayInputStream;
const/4 v3, 0x0
new-array v3, v3, [B
invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
goto :goto_c
:catch_18
move-exception v2
move-object v1, v2
new-instance v2, Lcom/fsck/k9/mail/MessagingException;
const-string v3, "Invalid attachment."
invoke-direct {v2, v3, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 4
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->getInputStream()Ljava/io/InputStream;
move-result-object v1
new-instance v0, Lcom/fsck/k9/codec/binary/Base64OutputStream;
invoke-direct {v0, p1}, Lcom/fsck/k9/codec/binary/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
invoke-virtual {v0}, Lcom/fsck/k9/codec/binary/Base64OutputStream;->close()V
return-void
.end method