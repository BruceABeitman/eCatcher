.class public Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MeasureOutputStream.java"
.field private final mProgressEvent:Lco/vine/android/util/VineProgressEvent;
.field private final mProgressListener:Lco/vine/android/util/VineProgressListener;
.method public constructor <init>(Ljava/io/OutputStream;Lco/vine/android/util/VineProgressListener;)V
.registers 5
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object p2, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lco/vine/android/util/VineProgressListener;
new-instance v0, Lco/vine/android/util/VineProgressEvent;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lco/vine/android/util/VineProgressEvent;-><init>(I)V
iput-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lco/vine/android/util/VineProgressEvent;
return-void
.end method
.method public write(I)V
.registers 4
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lco/vine/android/util/VineProgressEvent;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lco/vine/android/util/VineProgressEvent;->setBytesTransfered(I)V
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lco/vine/android/util/VineProgressListener;
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lco/vine/android/util/VineProgressListener;
iget-object v1, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lco/vine/android/util/VineProgressEvent;
invoke-interface {v0, v1}, Lco/vine/android/util/VineProgressListener;->progressChanged(Lco/vine/android/util/VineProgressEvent;)V
:cond_16
return-void
.end method
.method public write([BII)V
.registers 6
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lco/vine/android/util/VineProgressEvent;
invoke-virtual {v0, p3}, Lco/vine/android/util/VineProgressEvent;->setBytesTransfered(I)V
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lco/vine/android/util/VineProgressListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lco/vine/android/util/VineProgressListener;
iget-object v1, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lco/vine/android/util/VineProgressEvent;
invoke-interface {v0, v1}, Lco/vine/android/util/VineProgressListener;->progressChanged(Lco/vine/android/util/VineProgressEvent;)V
:cond_15
return-void
.end method