.class public Lcom/pinguo/album/data/utils/DBUpdateHelper;
.super Ljava/lang/Object;
.source "DBUpdateHelper.java"
.field private mUpdated:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/data/utils/DBUpdateHelper;->mUpdated:Z
return-void
.end method
.method public isUpdated()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/data/utils/DBUpdateHelper;->mUpdated:Z
return v0
.end method
.method public update(DD)D
.registers 6
cmpl-double v0, p1, p3
if-eqz v0, :cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/data/utils/DBUpdateHelper;->mUpdated:Z
move-wide p1, p3
:cond_8
return-wide p1
.end method
.method public update(II)I
.registers 4
if-eq p1, p2, :cond_6
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/data/utils/DBUpdateHelper;->mUpdated:Z
move p1, p2
:cond_6
return p1
.end method
.method public update(JJ)J
.registers 6
cmp-long v0, p1, p3
if-eqz v0, :cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/data/utils/DBUpdateHelper;->mUpdated:Z
move-wide p1, p3
:cond_8
return-wide p1
.end method
.method public update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-static {p1, p2}, Lcom/pinguo/album/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/data/utils/DBUpdateHelper;->mUpdated:Z
move-object p1, p2
:cond_a
return-object p1
.end method