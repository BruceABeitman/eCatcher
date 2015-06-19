.class public final Lcom/google/android/gms/internal/gc;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
.field private static final TAG:Ljava/lang/String;
.field private final AC:Landroid/os/ParcelFileDescriptor;
.field private final HA:Ljava/io/OutputStream;
.field private final Hz:Ljava/io/InputStream;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/android/gms/internal/gc;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/gc;->TAG:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/gc;->AC:Landroid/os/ParcelFileDescriptor;
new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gc;->Hz:Ljava/io/InputStream;
new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gc;->HA:Ljava/io/OutputStream;
return-void
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gc;->AC:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
return-void
.end method
.method public final getInputStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gc;->Hz:Ljava/io/InputStream;
return-object v0
.end method
.method public final getOutputStream()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gc;->HA:Ljava/io/OutputStream;
return-object v0
.end method
.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gc;->AC:Landroid/os/ParcelFileDescriptor;
return-object v0
.end method
.method public final isClosed()Z
.registers 2
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/gc;->Hz:Ljava/io/InputStream;
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