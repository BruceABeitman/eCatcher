.class  Landroid/support/v8/renderscript/TypeThunker;
.super Landroid/support/v8/renderscript/Type;
.source "TypeThunker.java"
.field static mMap:Ljava/util/HashMap;
.field  mN:Landroid/renderscript/Type;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;
return-void
.end method
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Landroid/support/v8/renderscript/Type;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iput-object p2, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {p0}, Landroid/support/v8/renderscript/TypeThunker;->internalCalc()V
new-instance v0, Landroid/support/v8/renderscript/ElementThunker;
invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;
move-result-object v1
invoke-direct {v0, p1, v1}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
iput-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mElement:Landroid/support/v8/renderscript/Element;
sget-object v1, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;
monitor-enter v1
:try_start_17
sget-object v0, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;
iget-object v2, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
return-void
:catchall_20
move-exception v0
monitor-exit v1
:try_end_22
.catchall {:try_start_17 .. :try_end_22} :catchall_20
throw v0
.end method
.method static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;IIIZZI)Landroid/support/v8/renderscript/Type;
.registers 15
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/ElementThunker;
move-object v2, p0
check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;
new-instance v3, Landroid/renderscript/Type$Builder;
iget-object v5, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
iget-object v6, v0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;
invoke-direct {v3, v5, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
if-lez p2, :cond_14
invoke-virtual {v3, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;
:cond_14
if-lez p3, :cond_19
invoke-virtual {v3, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;
:cond_19
if-lez p4, :cond_1e
invoke-virtual {v3, p4}, Landroid/renderscript/Type$Builder;->setZ(I)Landroid/renderscript/Type$Builder;
:cond_1e
if-eqz p5, :cond_23
invoke-virtual {v3, p5}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;
:cond_23
if-eqz p6, :cond_28
invoke-virtual {v3, p6}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;
:cond_28
if-lez p7, :cond_2d
invoke-virtual {v3, p7}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;
:cond_2d
invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;
move-result-object v1
new-instance v4, Landroid/support/v8/renderscript/TypeThunker;
invoke-direct {v4, p0, v1}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
invoke-virtual {v4}, Landroid/support/v8/renderscript/TypeThunker;->internalCalc()V
return-object v4
.end method
.method static find(Landroid/renderscript/Type;)Landroid/support/v8/renderscript/Type;
.registers 2
sget-object v0, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;
invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v8/renderscript/Type;
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/TypeThunker;->getNObj()Landroid/renderscript/Type;
move-result-object v0
return-object v0
.end method
.method  getNObj()Landroid/renderscript/Type;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
return-object v0
.end method
.method  internalCalc()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I
move-result v0
iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimX:I
iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I
move-result v0
iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimY:I
iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I
move-result v0
iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimZ:I
iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z
move-result v0
iput-boolean v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimFaces:Z
iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z
move-result v0
iput-boolean v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimMipmaps:Z
iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;
invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I
move-result v0
iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimYuv:I
invoke-virtual {p0}, Landroid/support/v8/renderscript/TypeThunker;->calcElementCount()V
return-void
.end method