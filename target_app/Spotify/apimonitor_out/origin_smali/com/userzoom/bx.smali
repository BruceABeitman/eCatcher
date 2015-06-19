.class final Lcom/userzoom/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/userzoom/bw;


# direct methods
.method constructor <init>(Lcom/userzoom/bw;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bx;->a:Lcom/userzoom/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/userzoom/bx;->a:Lcom/userzoom/bw;

    iget-object v0, v0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    invoke-static {v0}, Luserzoom/com/UzSurveyActivity;->e(Luserzoom/com/UzSurveyActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/userzoom/ah;

    invoke-direct {v1, p0}, Lcom/userzoom/ah;-><init>(Lcom/userzoom/bx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
