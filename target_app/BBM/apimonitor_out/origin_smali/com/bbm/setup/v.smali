.class final Lcom/bbm/setup/v;
.super Ljava/lang/Object;
.source "SetupBbidErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/setup/SetupBbidErrorActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/SetupBbidErrorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/v;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Setup BBID Error Retry"

    const-class v1, Lcom/bbm/setup/SetupBbidErrorActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/Alaska;->w()V

    return-void
.end method
