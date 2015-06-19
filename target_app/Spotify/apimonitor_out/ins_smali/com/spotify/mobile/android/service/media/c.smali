.class public final Lcom/spotify/mobile/android/service/media/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/net/Uri;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0f026c
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/c;->a:Landroid/net/Uri;
return-void
.end method
.method public final a()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/c;->a:Landroid/net/Uri;
return-object v0
.end method