.class public final Lcom/google/android/gms/internal/mz;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/realtime/e;
.field private static final a:Ljava/lang/String;
.field private final b:Landroid/os/ParcelFileDescriptor;
.field private final c:Ljava/io/InputStream;
.field private final d:Ljava/io/OutputStream;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/android/gms/internal/mz;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/mz;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/mz;->b:Landroid/os/ParcelFileDescriptor;
new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
iput-object v0, p0, Lcom/google/android/gms/internal/mz;->c:Ljava/io/InputStream;
new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
iput-object v0, p0, Lcom/google/android/gms/internal/mz;->d:Ljava/io/OutputStream;
return-void
.end method
.method public a()Landroid/os/ParcelFileDescriptor;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/mz;->b:Landroid/os/ParcelFileDescriptor;
return-object v0
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/mz;->b:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
return-void
.end method
.method public c()Z
.registers 2
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/mz;->c:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7
const/4 v0, 0x0
:goto_6
return v0
:catch_7
move-exception v0
const/4 v0, 0x1
goto :goto_6
.end method
.method public d()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/mz;->c:Ljava/io/InputStream;
return-object v0
.end method
.method public e()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/mz;->d:Ljava/io/OutputStream;
return-object v0
.end method