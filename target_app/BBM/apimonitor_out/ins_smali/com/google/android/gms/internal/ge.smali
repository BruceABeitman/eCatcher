.class final Lcom/google/android/gms/internal/ge;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
.field private AC:Landroid/os/ParcelFileDescriptor;
.field private final GZ:Ljava/lang/String;
.field private final HG:Landroid/net/LocalSocket;
.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ge;->HG:Landroid/net/LocalSocket;
iput-object p2, p0, Lcom/google/android/gms/internal/ge;->GZ:Ljava/lang/String;
return-void
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->HG:Landroid/net/LocalSocket;
invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
return-void
.end method
.method public final getInputStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->HG:Landroid/net/LocalSocket;
invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public final getOutputStream()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->HG:Landroid/net/LocalSocket;
invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
return-object v0
.end method
.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->AC:Landroid/os/ParcelFileDescriptor;
if-nez v0, :cond_21
invoke-virtual {p0}, Lcom/google/android/gms/internal/ge;->isClosed()Z
move-result v0
if-nez v0, :cond_21
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ge;->HG:Landroid/net/LocalSocket;
invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V
invoke-virtual {v0}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ge;->AC:Landroid/os/ParcelFileDescriptor;
:cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->AC:Landroid/os/ParcelFileDescriptor;
return-object v0
.end method
.method public final isClosed()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->HG:Landroid/net/LocalSocket;
invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/internal/ge;->HG:Landroid/net/LocalSocket;
invoke-virtual {v0}, Landroid/net/LocalSocket;->isBound()Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method