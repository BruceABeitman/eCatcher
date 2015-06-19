.class public abstract Lcom/spotify/mobile/android/service/media/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:[Ljava/lang/String;
.field private final b:Landroid/database/MatrixCursor;
.method public constructor <init>([Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/service/media/b/a;->a:[Ljava/lang/String;
new-instance v0, Landroid/database/MatrixCursor;
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/b/a;->a:[Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/b/a;->b:Landroid/database/MatrixCursor;
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/service/media/c/d;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/service/media/c/d;
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/b/a;->a:[Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/service/media/b/a;->b:Landroid/database/MatrixCursor;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/media/c/d;-><init>([Ljava/lang/String;Landroid/database/AbstractCursor;)V
return-object v0
.end method
.method protected abstract a(Ljava/lang/Object;)[Ljava/lang/Object;
.end method
.method public final b(Ljava/lang/Object;)Lcom/spotify/mobile/android/service/media/b/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/b/a;->b:Landroid/database/MatrixCursor;
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/service/media/b/a;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
return-object p0
.end method