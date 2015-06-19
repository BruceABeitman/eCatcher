.class public Lcom/google/android/gms/drive/Contents;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Landroid/os/ParcelFileDescriptor;
.field final c:I
.field final d:I
.field final e:Lcom/google/android/gms/drive/DriveId;
.field private f:Z
.field private g:Z
.field private h:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/w;
invoke-direct {v0}, Lcom/google/android/gms/drive/w;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->f:Z
iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->g:Z
iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->h:Z
iput p1, p0, Lcom/google/android/gms/drive/Contents;->a:I
iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->b:Landroid/os/ParcelFileDescriptor;
iput p3, p0, Lcom/google/android/gms/drive/Contents;->c:I
iput p4, p0, Lcom/google/android/gms/drive/Contents;->d:I
iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->e:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public a()Landroid/os/ParcelFileDescriptor;
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->f:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Contents have been closed, cannot access the output stream."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->b:Landroid/os/ParcelFileDescriptor;
return-object v0
.end method
.method public b()Lcom/google/android/gms/drive/DriveId;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->e:Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method
.method public c()Ljava/io/InputStream;
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->f:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Contents have been closed, cannot access the input stream."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget v0, p0, Lcom/google/android/gms/drive/Contents;->d:I
const/high16 v1, 0x1000
if-eq v0, v1, :cond_1a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "getInputStream() can only be used with contents opened with MODE_READ_ONLY."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->g:Z
if-eqz v0, :cond_26
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "getInputStream() can only be called once per Contents instance."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->g:Z
new-instance v0, Ljava/io/FileInputStream;
iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->b:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
return-object v0
.end method
.method public d()Ljava/io/OutputStream;
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->f:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Contents have been closed, cannot access the output stream."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget v0, p0, Lcom/google/android/gms/drive/Contents;->d:I
const/high16 v1, 0x2000
if-eq v0, v1, :cond_1a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->h:Z
if-eqz v0, :cond_26
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "getOutputStream() can only be called once per Contents instance."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->h:Z
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->b:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/google/android/gms/drive/Contents;->d:I
return v0
.end method
.method public f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/drive/Contents;->c:I
return v0
.end method
.method public g()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->f:Z
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/w;->a(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V
return-void
.end method