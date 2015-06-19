.class public Ljavax/mail/ReadOnlyFolderException;
.super Ljavax/mail/MessagingException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x4f447e8d4f54375dL
.field private transient folder:Ljavax/mail/Folder;
.method public constructor <init>(Ljavax/mail/Folder;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Ljavax/mail/ReadOnlyFolderException;->folder:Ljavax/mail/Folder;
return-void
.end method
.method public getFolder()Ljavax/mail/Folder;
.registers 2
iget-object v0, p0, Ljavax/mail/ReadOnlyFolderException;->folder:Ljavax/mail/Folder;
return-object v0
.end method