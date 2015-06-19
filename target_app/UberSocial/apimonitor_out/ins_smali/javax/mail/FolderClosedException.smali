.class public Ljavax/mail/FolderClosedException;
.super Ljavax/mail/MessagingException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x176c8d33ac752d2bL
.field private transient folder:Ljavax/mail/Folder;
.method public constructor <init>(Ljavax/mail/Folder;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;
return-void
.end method
.method public getFolder()Ljavax/mail/Folder;
.registers 2
iget-object v0, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;
return-object v0
.end method