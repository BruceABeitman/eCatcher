.class public final Lcom/spotify/mobile/android/service/media/c/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:[Ljava/lang/String;
.field private b:Landroid/database/AbstractCursor;
.field private c:Landroid/os/Bundle;
.method public constructor <init>([Ljava/lang/String;Landroid/database/AbstractCursor;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/service/media/c/d;->a:[Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/service/media/c/d;->b:Landroid/database/AbstractCursor;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/c/d;->c:Landroid/os/Bundle;
return-void
.end method
.method public final a()Landroid/database/AbstractCursor;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/c/d;->b:Landroid/database/AbstractCursor;
return-object v0
.end method