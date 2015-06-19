.class public Lcom/sun/mail/imap/AppendUID;
.super Ljava/lang/Object;
.source "SourceFile"
.field public uid:J
.field public uidvalidity:J
.method public constructor <init>(JJ)V
.registers 7
const-wide/16 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J
iput-wide v0, p0, Lcom/sun/mail/imap/AppendUID;->uid:J
iput-wide p1, p0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J
iput-wide p3, p0, Lcom/sun/mail/imap/AppendUID;->uid:J
return-void
.end method