.class public final Lcom/coremedia/iso/boxes/g;
.super Ljava/lang/Object;
.source "SampleDependencyTypeBox.java"
.field private a:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/coremedia/iso/boxes/g;->a:I
return-void
.end method
.method static synthetic a(Lcom/coremedia/iso/boxes/g;)I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/g;->a:I
return v0
.end method
.method private b()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/g;->a:I
shr-int/lit8 v0, v0, 0x6
and-int/lit8 v0, v0, 0x3
return v0
.end method
.method private c()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/g;->a:I
shr-int/lit8 v0, v0, 0x2
and-int/lit8 v0, v0, 0x3
return v0
.end method
.method private d()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/g;->a:I
and-int/lit8 v0, v0, 0x3
return v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/g;->a:I
shr-int/lit8 v0, v0, 0x4
and-int/lit8 v0, v0, 0x3
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Entry{reserved="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/coremedia/iso/boxes/g;->b()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleDependsOn="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/g;->a()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleIsDependentOn="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lcom/coremedia/iso/boxes/g;->c()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sampleHasRedundancy="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lcom/coremedia/iso/boxes/g;->d()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method