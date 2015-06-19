.class public Lco/vine/android/recorder/AudioData;
.super Ljava/lang/Object;
.source "AudioData.java"
.implements Ljava/io/Externalizable;
.field  size:I
.field  start:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lco/vine/android/recorder/AudioData;->start:I
iput p2, p0, Lco/vine/android/recorder/AudioData;->size:I
return-void
.end method
.method public constructor <init>(Lco/vine/android/recorder/AudioData;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget v0, p1, Lco/vine/android/recorder/AudioData;->start:I
iput v0, p0, Lco/vine/android/recorder/AudioData;->start:I
iget v0, p1, Lco/vine/android/recorder/AudioData;->size:I
iput v0, p0, Lco/vine/android/recorder/AudioData;->size:I
return-void
.end method
.method public getDurationNs()J
.registers 3
iget v0, p0, Lco/vine/android/recorder/AudioData;->size:I
invoke-static {v0}, Lco/vine/android/recorder/RecordConfigUtils;->getTimeStampInNsFromSampleCounted(I)I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 3
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/recorder/AudioData;->start:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/recorder/AudioData;->size:I
return-void
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 3
iget v0, p0, Lco/vine/android/recorder/AudioData;->start:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lco/vine/android/recorder/AudioData;->size:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
return-void
.end method