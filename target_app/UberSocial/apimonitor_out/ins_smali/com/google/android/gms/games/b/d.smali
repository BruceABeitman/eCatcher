.class public final Lcom/google/android/gms/games/b/d;
.super Lcom/google/android/gms/common/data/a;
.field private final b:Lcom/google/android/gms/games/b/o;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/b/o;
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()Landroid/os/Bundle;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/games/b/o;-><init>(Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/google/android/gms/games/b/d;->b:Lcom/google/android/gms/games/b/o;
return-void
.end method
.method public a(I)Lcom/google/android/gms/games/b/c;
.registers 4
new-instance v0, Lcom/google/android/gms/games/b/q;
iget-object v1, p0, Lcom/google/android/gms/games/b/d;->a:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/b/q;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public synthetic b(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/b/d;->a(I)Lcom/google/android/gms/games/b/c;
move-result-object v0
return-object v0
.end method
.method public f()Lcom/google/android/gms/games/b/o;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/d;->b:Lcom/google/android/gms/games/b/o;
return-object v0
.end method