.class public final Lcom/spotify/mobile/android/service/flow/login/a/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/util/bh;
.field private final b:Lcom/spotify/mobile/android/service/flow/login/a/g;
.field private c:Lcom/spotify/mobile/android/service/flow/login/a/g;
.field private d:Lcom/spotify/mobile/android/util/be;
.field private e:Ljava/util/HashMap;
.field private f:Z
.field private g:Z
.field private h:Lcom/spotify/mobile/android/service/flow/login/a/d;
.method constructor <init>(Lcom/spotify/mobile/android/util/be;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/a/f$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/a/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->a:Lcom/spotify/mobile/android/util/bh;
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a/a;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/a/a;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->b:Lcom/spotify/mobile/android/service/flow/login/a/g;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->e:Ljava/util/HashMap;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/be;
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->d:Lcom/spotify/mobile/android/util/be;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->e:Ljava/util/HashMap;
const-string v1, "validate"
const-string v2, "1"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->b:Lcom/spotify/mobile/android/service/flow/login/a/g;
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->c:Lcom/spotify/mobile/android/service/flow/login/a/g;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/a/f;Lcom/spotify/mobile/android/service/flow/login/a/d;)Lcom/spotify/mobile/android/service/flow/login/a/d;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->h:Lcom/spotify/mobile/android/service/flow/login/a/d;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/a/f;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->f:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/a/f;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->g:Z
return v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/flow/login/a/f;)Lcom/spotify/mobile/android/service/flow/login/a/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->c:Lcom/spotify/mobile/android/service/flow/login/a/g;
return-object v0
.end method
.method public final a()V
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->g:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->f:Z
if-nez v0, :cond_4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->f:Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->d:Lcom/spotify/mobile/android/util/be;
const-string v1, ""
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->e:Ljava/util/HashMap;
iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->a:Lcom/spotify/mobile/android/util/bh;
invoke-interface {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V
goto :goto_4
.end method
.method public final a(Lcom/spotify/mobile/android/service/flow/login/a/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->c:Lcom/spotify/mobile/android/service/flow/login/a/g;
return-void
.end method
.method public final b()Lcom/spotify/mobile/android/service/flow/login/a/d;
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->g:Z
const-string v1, "Don\'t call this before the licenses have been loaded."
invoke-static {v0, v1}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->h:Lcom/spotify/mobile/android/service/flow/login/a/d;
return-object v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f;->g:Z
return v0
.end method