.class public final Lcom/facebook/e/b/a/a;
.super Ljava/lang/Object;
.source "ParcelSizeLogger.java"
.field private static a:Ljava/util/concurrent/atomic/AtomicReference;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
sput-object v0, Lcom/facebook/e/b/a/a;->a:Ljava/util/concurrent/atomic/AtomicReference;
return-void
.end method
.method public static a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.registers 1
if-eqz p0, :cond_9
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
invoke-static {p0}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;
move-result-object p0
:cond_9
return-object p0
.end method
.method public static b(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.registers 2
sget-object v0, Lcom/facebook/e/b/a/a;->a:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
return-object p0
.end method