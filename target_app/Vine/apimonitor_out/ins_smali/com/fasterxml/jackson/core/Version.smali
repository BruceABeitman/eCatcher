.class public Lcom/fasterxml/jackson/core/Version;
.super Ljava/lang/Object;
.source "Version.java"
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.field private static final UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version; = null
.field private static final serialVersionUID:J = 0x1L
.field protected final _artifactId:Ljava/lang/String;
.field protected final _groupId:Ljava/lang/String;
.field protected final _majorVersion:I
.field protected final _minorVersion:I
.field protected final _patchLevel:I
.field protected final _snapshotInfo:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v4, 0x0
const/4 v1, 0x0
new-instance v0, Lcom/fasterxml/jackson/core/Version;
move v2, v1
move v3, v1
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/core/Version;->UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version;
return-void
.end method
.method public constructor <init>(IIILjava/lang/String;)V
.registers 12
const/4 v5, 0x0
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move-object v4, p4
move-object v6, v5
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
iput p2, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
iput p3, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
iput-object p4, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;
if-nez p5, :cond_f
const-string p5, ""
:cond_f
iput-object p5, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
if-nez p6, :cond_15
const-string p6, ""
:cond_15
iput-object p6, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
return-void
.end method
.method public static unknownVersion()Lcom/fasterxml/jackson/core/Version;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/core/Version;->UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version;
return-object v0
.end method
.method public compareTo(Lcom/fasterxml/jackson/core/Version;)I
.registers 4
if-ne p1, p0, :cond_4
const/4 v0, 0x0
:cond_3
:goto_3
return v0
:cond_4
iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
iget-object v1, p1, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_3
iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
iget-object v1, p1, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_3
iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
iget v1, p1, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
sub-int/2addr v0, v1
if-nez v0, :cond_3
iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
iget v1, p1, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
sub-int/2addr v0, v1
if-nez v0, :cond_3
iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
iget v1, p1, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
sub-int/2addr v0, v1
goto :goto_3
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/fasterxml/jackson/core/Version;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/Version;->compareTo(Lcom/fasterxml/jackson/core/Version;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/fasterxml/jackson/core/Version;
iget v2, p1, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
iget v3, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
if-ne v2, v3, :cond_3d
iget v2, p1, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
iget v3, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
if-ne v2, v3, :cond_3d
iget v2, p1, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
iget v3, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
if-ne v2, v3, :cond_3d
iget-object v2, p1, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
iget-object v2, p1, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_3d
move v0, v1
goto :goto_4
.end method
.method public getArtifactId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
return-object v0
.end method
.method public getGroupId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
return-object v0
.end method
.method public getMajorVersion()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
return v0
.end method
.method public getMinorVersion()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
return v0
.end method
.method public getPatchLevel()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
return v0
.end method
.method public hashCode()I
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
iget v2, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
add-int/2addr v1, v2
iget v2, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
sub-int/2addr v1, v2
iget v2, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
add-int/2addr v1, v2
xor-int/2addr v0, v1
return v0
.end method
.method public isSnapshot()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isUknownVersion()Z
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/Version;->UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version;
if-ne p0, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public toFullString()Ljava/lang/String;
.registers 4
const/16 v2, 0x2f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Version;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
const/16 v2, 0x2e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Version;->isSnapshot()Z
move-result v1
if-eqz v1, :cond_2f
const/16 v1, 0x2d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2f
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method