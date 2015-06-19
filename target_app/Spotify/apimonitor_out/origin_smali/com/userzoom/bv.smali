.class public final Lcom/userzoom/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Luserzoom/com/UzSurveyActivity;


# direct methods
.method public constructor <init>(Luserzoom/com/UzSurveyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bv;->a:Luserzoom/com/UzSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/userzoom/bv;->a:Luserzoom/com/UzSurveyActivity;

    invoke-static {v0}, Luserzoom/com/UzSurveyActivity;->f(Luserzoom/com/UzSurveyActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
