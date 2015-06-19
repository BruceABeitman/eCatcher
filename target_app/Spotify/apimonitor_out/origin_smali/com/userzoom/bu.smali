.class public final Lcom/userzoom/bu;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Luserzoom/com/UzSurveyActivity;


# direct methods
.method public constructor <init>(Luserzoom/com/UzSurveyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bu;->a:Luserzoom/com/UzSurveyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/userzoom/bu;->a:Luserzoom/com/UzSurveyActivity;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/userzoom/bu;->a:Luserzoom/com/UzSurveyActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Luserzoom/com/UzSurveyActivity;->b(Luserzoom/com/UzSurveyActivity;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
