.class public Lnet/hockeyapp/android/objects/FeedbackResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf2d2472b72e4b8eL


# instance fields
.field private feedback:Lnet/hockeyapp/android/objects/Feedback;

.field private status:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public final a(Lnet/hockeyapp/android/objects/Feedback;)V
    .registers 2

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->feedback:Lnet/hockeyapp/android/objects/Feedback;

    return-void
.end method

.method public final b()Lnet/hockeyapp/android/objects/Feedback;
    .registers 2

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->feedback:Lnet/hockeyapp/android/objects/Feedback;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->token:Ljava/lang/String;

    return-object v0
.end method
