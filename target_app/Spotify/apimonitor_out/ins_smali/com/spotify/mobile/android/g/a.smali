.class public abstract Lcom/spotify/mobile/android/g/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/spotify/mobile/android/g/a;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/g/b;->a:Lcom/spotify/mobile/android/g/b;
return-object v0
.end method
.method public static a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/g/c;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/g/c;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public static b(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
.registers 2
if-nez p0, :cond_5
sget-object v0, Lcom/spotify/mobile/android/g/b;->a:Lcom/spotify/mobile/android/g/b;
:goto_4
return-object v0
:cond_5
invoke-static {p0}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
move-result-object v0
goto :goto_4
.end method
.method public abstract b()Ljava/lang/Object;
.end method
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/g/a;->c()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;
move-result-object p1
:cond_a
return-object p1
.end method
.method public abstract c()Z
.end method