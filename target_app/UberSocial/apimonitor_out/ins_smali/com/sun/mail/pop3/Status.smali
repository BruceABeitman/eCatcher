.class  Lcom/sun/mail/pop3/Status;
.super Ljava/lang/Object;
.source "SourceFile"
.field  size:I
.field  total:I
.method constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/sun/mail/pop3/Status;->total:I
iput v0, p0, Lcom/sun/mail/pop3/Status;->size:I
return-void
.end method