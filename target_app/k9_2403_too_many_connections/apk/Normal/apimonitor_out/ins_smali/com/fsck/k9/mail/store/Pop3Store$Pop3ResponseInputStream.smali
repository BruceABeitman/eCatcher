.class  Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;
.super Ljava/io/InputStream;
.source "Pop3Store.java"
.field  mFinished:Z
.field  mIn:Ljava/io/InputStream;
.field  mStartOfLine:Z
.field final synthetic this$0:Lcom/fsck/k9/mail/store/Pop3Store;
.method public constructor <init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/io/InputStream;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z
iput-object p2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;
return-void
.end method
.method public read()I
.registers 5
const/4 v3, 0x1
const/4 v2, -0x1
iget-boolean v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z
if-eqz v1, :cond_8
move v1, v2
:goto_7
return v1
:cond_8
iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v0
iget-boolean v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z
if-eqz v1, :cond_29
const/16 v1, 0x2e
if-ne v0, v1, :cond_29
iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v0
const/16 v1, 0xd
if-ne v0, v1, :cond_29
iput-boolean v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z
iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move v1, v2
goto :goto_7
:cond_29
const/16 v1, 0xa
if-ne v0, v1, :cond_32
move v1, v3
:goto_2e
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z
move v1, v0
goto :goto_7
:cond_32
const/4 v1, 0x0
goto :goto_2e
.end method