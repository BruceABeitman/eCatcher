.class  Lcom/spotify/mobile/android/service/am;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private final a:Lcom/spotify/mobile/android/util/bm;
.field private b:Z
.field private c:Z
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/util/bm;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/bm;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/am;->a:Lcom/spotify/mobile/android/util/bm;
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/am;->b:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/am;->c:Z
return-void
.end method
.method final a()Lcom/spotify/mobile/android/util/bm;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/am;->a:Lcom/spotify/mobile/android/util/bm;
return-object v0
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/am;->b:Z
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/am;->b:Z
return v0
.end method
.method public final d()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/am;->c:Z
return-void
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/am;->c:Z
return v0
.end method