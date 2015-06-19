.class final Lcom/spotify/mobile/android/service/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/w;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/w;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/w;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_82

    :cond_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/x;->c()V

    goto :goto_15

    :pswitch_25
    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0, v2, v2}, Lcom/spotify/mobile/android/service/x;->a(ZZ)V

    goto :goto_34

    :pswitch_44
    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0, v3, v2}, Lcom/spotify/mobile/android/service/x;->a(ZZ)V

    goto :goto_53

    :pswitch_63
    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w$1;->a:Lcom/spotify/mobile/android/service/w;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0, v3, v3}, Lcom/spotify/mobile/android/service/x;->a(ZZ)V

    goto :goto_72

    :pswitch_data_82
    .packed-switch -0x3
        :pswitch_63
        :pswitch_44
        :pswitch_25
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
