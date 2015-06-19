.class public Lcom/spotify/mobile/android/util/ca;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private static final a:Lcom/spotify/mobile/android/util/cz;
.field private static final b:Lcom/spotify/mobile/android/util/cz;
.field private c:Lcom/spotify/mobile/android/util/cx;
.field private d:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const-string v0, "playback_error_code"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/ca;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "playback_error_uri"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/ca;->b:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
iput-object p1, p0, Lcom/spotify/mobile/android/util/ca;->d:Landroid/content/Context;
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ca;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ca;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
return-void
.end method
.method public final a(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ca;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ca;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
return-void
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/util/ca;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v0
return v0
.end method
.method public final c()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/util/ca;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/util/ca;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;)I
move-result v0
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/util/ca;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ca;->c:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/util/ca;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method