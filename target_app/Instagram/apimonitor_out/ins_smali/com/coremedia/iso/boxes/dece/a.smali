.class public final Lcom/coremedia/iso/boxes/dece/a;
.super Ljava/lang/Object;
.source "TrickPlayBox.java"
.field private a:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/coremedia/iso/boxes/dece/a;->a:I
return-void
.end method
.method private a()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/dece/a;->a:I
shr-int/lit8 v0, v0, 0x6
and-int/lit8 v0, v0, 0x3
return v0
.end method
.method static synthetic a(Lcom/coremedia/iso/boxes/dece/a;)I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/dece/a;->a:I
return v0
.end method
.method private b()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/dece/a;->a:I
and-int/lit8 v0, v0, 0x3f
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Entry"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "{picType="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/coremedia/iso/boxes/dece/a;->a()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ",dependencyLevel="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/coremedia/iso/boxes/dece/a;->b()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method