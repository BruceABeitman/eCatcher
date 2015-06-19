.class final Lcom/bbm/ui/activities/ahy;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/StartupActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/StartupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ahy;->a:Lcom/bbm/ui/activities/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ahy;->a:Lcom/bbm/ui/activities/StartupActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->f(Lcom/bbm/ui/activities/StartupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
