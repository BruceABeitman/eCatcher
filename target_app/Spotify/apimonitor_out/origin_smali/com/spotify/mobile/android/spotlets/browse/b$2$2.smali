.class final Lcom/spotify/mobile/android/spotlets/browse/b$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/browse/b$2;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/b$2;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b$2;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->i(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_15
    return v1

    :pswitch_16
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->i(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :pswitch_22
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->i(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :pswitch_2e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->i(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2e
        :pswitch_22
    .end packed-switch
.end method
