.class public final Lcom/spotify/mobile/android/service/c/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Lcom/spotify/mobile/android/service/c/g;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/f;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/f;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/f;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/f;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/f;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/f;->c:Ljava/lang/String;
return-object v0
.end method