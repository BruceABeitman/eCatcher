.class final Lcom/bbm/setup/e;
.super Ljava/lang/Object;
.source "DeviceSwitchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/setup/DeviceSwitchActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/DeviceSwitchActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/e;->a:Lcom/bbm/setup/DeviceSwitchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    iget v1, v0, Lcom/bbm/c/c;->am:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bbm/c/c;->am:I

    iget-object v0, p0, Lcom/bbm/setup/e;->a:Lcom/bbm/setup/DeviceSwitchActivity;

    invoke-virtual {v0}, Lcom/bbm/setup/DeviceSwitchActivity;->c()V

    return-void
.end method
