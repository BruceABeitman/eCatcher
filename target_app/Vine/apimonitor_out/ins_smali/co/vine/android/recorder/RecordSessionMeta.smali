.class public Lco/vine/android/recorder/RecordSessionMeta;
.super Ljava/lang/Object;
.source "RecordSessionMeta.java"
.implements Ljava/io/Externalizable;
.field private static final serialVersionUID:J = 0x2f5b08d7602a389cL
.field private mLastModified:J
.field private mProgress:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/recorder/RecordSessionMeta;->mLastModified:J
iput p1, p0, Lco/vine/android/recorder/RecordSessionMeta;->mProgress:I
return-void
.end method
.method public getLastModified()J
.registers 3
iget-wide v0, p0, Lco/vine/android/recorder/RecordSessionMeta;->mLastModified:J
return-wide v0
.end method
.method public getProgress()I
.registers 2
iget v0, p0, Lco/vine/android/recorder/RecordSessionMeta;->mProgress:I
return v0
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 4
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/recorder/RecordSessionMeta;->mProgress:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/recorder/RecordSessionMeta;->mLastModified:J
return-void
.end method
.method public setProgress(I)V
.registers 2
iput p1, p0, Lco/vine/android/recorder/RecordSessionMeta;->mProgress:I
return-void
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 4
iget v0, p0, Lco/vine/android/recorder/RecordSessionMeta;->mProgress:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/recorder/RecordSessionMeta;->mLastModified:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
return-void
.end method