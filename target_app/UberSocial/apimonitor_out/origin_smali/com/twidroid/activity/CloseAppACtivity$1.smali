.class Lcom/twidroid/activity/CloseAppACtivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/CloseAppACtivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/CloseAppACtivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/CloseAppACtivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/CloseAppACtivity$1;->a:Lcom/twidroid/activity/CloseAppACtivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/CloseAppACtivity$1;->a:Lcom/twidroid/activity/CloseAppACtivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/CloseAppACtivity;->finish()V

    return-void
.end method
