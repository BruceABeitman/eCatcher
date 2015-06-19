.class  Landroid/support/v8/renderscript/ScriptGroup$Node;
.super Ljava/lang/Object;
.source "ScriptGroup.java"
.field  dagNumber:I
.field  mInputs:Ljava/util/ArrayList;
.field  mKernels:Ljava/util/ArrayList;
.field  mNext:Landroid/support/v8/renderscript/ScriptGroup$Node;
.field  mOutputs:Ljava/util/ArrayList;
.field  mScript:Landroid/support/v8/renderscript/Script;
.method constructor <init>(Landroid/support/v8/renderscript/Script;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mScript:Landroid/support/v8/renderscript/Script;
return-void
.end method