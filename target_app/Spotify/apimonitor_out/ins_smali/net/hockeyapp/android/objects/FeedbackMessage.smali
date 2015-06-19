.class public Lnet/hockeyapp/android/objects/FeedbackMessage;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x79c0036a37b8b480L
.field private appId:Ljava/lang/String;
.field private cleanText:Ljava/lang/String;
.field private createdAt:Ljava/lang/String;
.field private id:I
.field private model:Ljava/lang/String;
.field private name:Ljava/lang/String;
.field private oem:Ljava/lang/String;
.field private osVersion:Ljava/lang/String;
.field private subject:Ljava/lang/String;
.field private text:Ljava/lang/String;
.field private token:Ljava/lang/String;
.field private userString:Ljava/lang/String;
.field private via:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->text:Ljava/lang/String;
return-object v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->id:I
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->subject:Ljava/lang/String;
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->createdAt:Ljava/lang/String;
return-object v0
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->via:I
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->text:Ljava/lang/String;
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->name:Ljava/lang/String;
return-object v0
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->oem:Ljava/lang/String;
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->model:Ljava/lang/String;
return-void
.end method
.method public final e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->osVersion:Ljava/lang/String;
return-void
.end method
.method public final f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->createdAt:Ljava/lang/String;
return-void
.end method
.method public final g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->token:Ljava/lang/String;
return-void
.end method
.method public final h(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->userString:Ljava/lang/String;
return-void
.end method
.method public final i(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->cleanText:Ljava/lang/String;
return-void
.end method
.method public final j(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->name:Ljava/lang/String;
return-void
.end method
.method public final k(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->appId:Ljava/lang/String;
return-void
.end method