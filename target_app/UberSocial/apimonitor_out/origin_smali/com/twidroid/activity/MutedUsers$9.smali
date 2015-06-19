.class Lcom/twidroid/activity/MutedUsers$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MutedUsers;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/MutedUsers;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$9;->a:Lcom/twidroid/activity/MutedUsers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/16 v0, 0x17

    if-ne p2, v0, :cond_4

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
