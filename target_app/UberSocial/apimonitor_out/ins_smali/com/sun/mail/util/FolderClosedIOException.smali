.class public Lcom/sun/mail/util/FolderClosedIOException;
.super Ljava/io/IOException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x3b699a4df297b817L
.field private transient folder:Ljavax/mail/Folder;
.method public constructor <init>(Ljavax/mail/Folder;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/sun/mail/util/FolderClosedIOException;->folder:Ljavax/mail/Folder;
return-void
.end method
.method public getFolder()Ljavax/mail/Folder;
.registers 2
iget-object v0, p0, Lcom/sun/mail/util/FolderClosedIOException;->folder:Ljavax/mail/Folder;
return-object v0
.end method