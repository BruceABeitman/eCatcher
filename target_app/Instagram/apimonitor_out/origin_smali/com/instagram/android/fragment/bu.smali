.class final Lcom/instagram/android/fragment/bu;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bo;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/bu;->a:Lcom/instagram/android/fragment/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/instagram/android/fragment/bu;->a:Lcom/instagram/android/fragment/bo;

    invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/fragment/bo;->a(Lcom/instagram/android/fragment/bo;Ljava/lang/String;)V

    :cond_f
    return-void
.end method
