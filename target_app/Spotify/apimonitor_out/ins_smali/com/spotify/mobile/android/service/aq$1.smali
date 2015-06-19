.class final Lcom/spotify/mobile/android/service/aq$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/net/Uri;
.field final synthetic b:Lcom/spotify/mobile/android/service/aq;
.method constructor <init>(Lcom/spotify/mobile/android/service/aq;Landroid/net/Uri;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/aq$1;->b:Lcom/spotify/mobile/android/service/aq;
iput-object p2, p0, Lcom/spotify/mobile/android/service/aq$1;->a:Landroid/net/Uri;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
const v2, 0x7f0b00b7
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/aq$1;->a:Landroid/net/Uri;
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v2, v2}, Lcom/squareup/picasso/ad;->a(II)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/picasso/ad;->b()Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/aq$1;->b:Lcom/spotify/mobile/android/service/aq;
invoke-static {v1}, Lcom/spotify/mobile/android/service/aq;->f(Lcom/spotify/mobile/android/service/aq;)Lcom/spotify/mobile/android/service/ar;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
return-void
.end method