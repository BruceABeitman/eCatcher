.class public Lcom/googlecode/javacpp/Generator;
.super Ljava/lang/Object;
.source "Generator.java"
.implements Ljava/io/Closeable;
.field public static final JNI_VERSION:Ljava/lang/String; = "JNI_VERSION_1_6"
.field private static final baseClasses:Ljava/util/List;
.field private static final logger:Ljava/util/logging/Logger;
.field private arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.field private deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.field private functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.field private functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.field private jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.field private jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.field private mayThrowExceptions:Z
.field private members:Ljava/util/HashMap;
.field private out:Ljava/io/PrintWriter;
.field private out2:Ljava/io/PrintWriter;
.field private properties:Lcom/googlecode/javacpp/Loader$ClassProperties;
.field private usesAdapters:Z
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/googlecode/javacpp/Generator;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
const/16 v0, 0xc
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
const-class v2, Lcom/googlecode/javacpp/Pointer;
aput-object v2, v0, v1
const/4 v1, 0x1
const-class v2, Lcom/googlecode/javacpp/BytePointer;
aput-object v2, v0, v1
const/4 v1, 0x2
const-class v2, Lcom/googlecode/javacpp/ShortPointer;
aput-object v2, v0, v1
const/4 v1, 0x3
const-class v2, Lcom/googlecode/javacpp/IntPointer;
aput-object v2, v0, v1
const/4 v1, 0x4
const-class v2, Lcom/googlecode/javacpp/LongPointer;
aput-object v2, v0, v1
const/4 v1, 0x5
const-class v2, Lcom/googlecode/javacpp/FloatPointer;
aput-object v2, v0, v1
const/4 v1, 0x6
const-class v2, Lcom/googlecode/javacpp/DoublePointer;
aput-object v2, v0, v1
const/4 v1, 0x7
const-class v2, Lcom/googlecode/javacpp/CharPointer;
aput-object v2, v0, v1
const/16 v1, 0x8
const-class v2, Lcom/googlecode/javacpp/PointerPointer;
aput-object v2, v0, v1
const/16 v1, 0x9
const-class v2, Lcom/googlecode/javacpp/BoolPointer;
aput-object v2, v0, v1
const/16 v1, 0xa
const-class v2, Lcom/googlecode/javacpp/CLongPointer;
aput-object v2, v0, v1
const/16 v1, 0xb
const-class v2, Lcom/googlecode/javacpp/SizeTPointer;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/googlecode/javacpp/Generator;->baseClasses:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Loader$ClassProperties;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/googlecode/javacpp/Generator;->properties:Lcom/googlecode/javacpp/Loader$ClassProperties;
return-void
.end method
.method private doCall(Lcom/googlecode/javacpp/Generator$MethodInformation;Ljava/lang/String;)V
.registers 21
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
if-eqz v14, :cond_b5
const-string v3, "        "
:goto_8
const-string v8, "("
const-string v10, ")"
const/4 v9, 0x0
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
const-class v15, Lcom/googlecode/javacpp/annotation/Index;
invoke-virtual {v14, v15}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v14
if-nez v14, :cond_2b
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
if-eqz v14, :cond_b9
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
const-class v15, Lcom/googlecode/javacpp/annotation/Index;
invoke-virtual {v14, v15}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v14
if-eqz v14, :cond_b9
:cond_2b
const/4 v4, 0x1
:goto_2c
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z
if-eqz v14, :cond_bc
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "void* allocatedAddress = jlong_to_ptr(arg0);"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "void (*deallocatorAddress)(void*) = (void(*)(void*))jlong_to_ptr(arg1);"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "if (deallocatorAddress != NULL && allocatedAddress != NULL) {"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "    (*deallocatorAddress)(allocatedAddress);"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "}"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_b4
:goto_b4
return-void
:cond_b5
const-string v3, "    "
goto/16 :goto_8
:cond_b9
const/4 v4, 0x0
goto/16 :goto_2c
:cond_bc
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
if-nez v14, :cond_d4
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v14, :cond_d4
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
if-nez v14, :cond_d4
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v14, :cond_2be
:cond_d4
const/4 v13, 0x0
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
array-length v14, v14
add-int/lit8 v6, v14, -0x1
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v14, :cond_e8
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v14, :cond_183
:cond_e8
move-object/from16 v0, p1
invoke-static {v0, v6}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;
move-result-object v14
instance-of v14, v14, Lcom/googlecode/javacpp/annotation/ByRef;
if-nez v14, :cond_183
const/4 v14, 0x0
move-object/from16 v0, p1
invoke-static {v14, v0, v6}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v14
if-nez v14, :cond_183
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v14, v14, v6
const-class v15, Ljava/lang/String;
if-ne v14, v15, :cond_183
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "strcpy((char*)"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const/4 v13, 0x1
const-string v8, ", "
:goto_122
move-object/from16 v0, p1
iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v14
if-eqz v14, :cond_245
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_137
:goto_137
move v5, v9
:goto_138
move-object/from16 v0, p1
iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I
if-ge v5, v14, :cond_407
move-object/from16 v0, p1
invoke-static {v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "["
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v14, v14, v5
invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z
move-result v14
if-eqz v14, :cond_403
const-string v14, "arg"
:goto_167
move-object/from16 v0, v16
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
const-string v16, "]"
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
add-int/lit8 v5, v5, 0x1
goto :goto_138
:cond_183
const/4 v14, 0x1
if-lt v6, v14, :cond_216
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
const/4 v15, 0x0
aget-object v14, v14, v15
invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z
move-result v14
if-eqz v14, :cond_216
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
const/4 v15, 0x0
aget-object v14, v14, v15
invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z
move-result v14
if-eqz v14, :cond_216
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
const/4 v15, 0x1
aget-object v14, v14, v15
sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-eq v14, v15, :cond_1ba
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
const/4 v15, 0x1
aget-object v14, v14, v15
sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
if-ne v14, v15, :cond_216
:cond_1ba
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "memcpy("
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const/4 v13, 0x1
const-string v8, ", "
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
if-nez v14, :cond_1e3
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
if-eqz v14, :cond_202
:cond_1e3
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v15, "ptr0 + arg1, "
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:goto_1ec
const/4 v9, 0x2
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, " * sizeof(*ptr0)"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
goto/16 :goto_122
:cond_202
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "ptr0 + arg1, "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
goto :goto_1ec
:cond_216
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p2
invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
if-nez v14, :cond_23c
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
if-eqz v14, :cond_242
:cond_23c
const-string v8, ""
:goto_23e
const-string v10, ""
goto/16 :goto_122
:cond_242
const-string v8, " = "
goto :goto_23e
:cond_245
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
if-nez v14, :cond_251
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v14, :cond_2a3
:cond_251
if-eqz v4, :cond_27d
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v15, "(*ptr)"
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "."
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p1
iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
const/16 v16, 0x0
aget-object v15, v15, v16
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
goto/16 :goto_137
:cond_27d
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "ptr->"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
move-object/from16 v16, v0
const/16 v17, 0x0
aget-object v16, v16, v17
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_137
:cond_2a3
move-object/from16 v0, p0
iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
if-eqz v4, :cond_2b0
const-string v14, "(*ptr)"
:goto_2ab
invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_137
:cond_2b0
move-object/from16 v0, p1
iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I
if-gtz v14, :cond_2b8
if-eqz v13, :cond_2bb
:cond_2b8
const-string v14, "ptr"
goto :goto_2ab
:cond_2bb
const-string v14, "*ptr"
goto :goto_2ab
:cond_2be
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z
if-eqz v14, :cond_2ea
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p2
invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "ptr"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v8, ""
const-string v10, ""
goto/16 :goto_137
:cond_2ea
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p2
invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-class v14, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, p1
iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v14
if-eqz v14, :cond_333
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
const-class v15, Lcom/googlecode/javacpp/annotation/Namespace;
invoke-virtual {v14, v15}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v14
if-eqz v14, :cond_328
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v15, "(ptr0->*(ptr->ptr))"
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const/4 v9, 0x1
goto/16 :goto_137
:cond_328
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v15, "(*ptr->ptr)"
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_137
:cond_333
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
if-eqz v14, :cond_39a
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
invoke-static {v14}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
const-class v15, Lcom/googlecode/javacpp/Pointer;
if-ne v14, v15, :cond_353
const-string v8, ""
const-string v10, ""
goto/16 :goto_137
:cond_353
move-object/from16 v0, p0
iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-static {v14, v0}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
move-result v14
if-eqz v14, :cond_397
const-string v14, "new (std::nothrow) "
:goto_370
move-object/from16 v0, v16
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const/16 v16, 0x1
aget-object v16, v11, v16
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
if-eqz v14, :cond_137
const-string v8, "["
const-string v10, "]"
goto/16 :goto_137
:cond_397
const-string v14, "new "
goto :goto_370
:cond_39a
move-object/from16 v0, p1
iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v14
if-eqz v14, :cond_3b1
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_137
:cond_3b1
if-eqz v4, :cond_3dd
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v15, "(*ptr)"
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "."
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p1
iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
const/16 v16, 0x0
aget-object v15, v15, v16
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
goto/16 :goto_137
:cond_3dd
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "ptr->"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
move-object/from16 v16, v0
const/16 v17, 0x0
aget-object v16, v16, v17
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_137
:cond_403
const-string v14, "ptr"
goto/16 :goto_167
:cond_407
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
array-length v14, v14
const/4 v15, 0x1
if-le v14, v15, :cond_41e
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v0, p1
iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
const/16 v16, 0x1
aget-object v15, v15, v16
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_41e
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-boolean v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z
if-eqz v14, :cond_454
move-object/from16 v0, p0
iget-object v15, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v0, p1
iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v14
if-eqz v14, :cond_4c3
const-string v14, "env, cls"
:goto_43b
invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
array-length v14, v14
sub-int/2addr v14, v9
move-object/from16 v0, p1
iget v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I
sub-int/2addr v14, v15
if-lez v14, :cond_454
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v15, ", "
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_454
move-object/from16 v0, p1
iget v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I
add-int v5, v9, v14
:goto_45a
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
array-length v14, v14
if-ge v5, v14, :cond_61a
move-object/from16 v0, p1
invoke-static {v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;
move-result-object v7
move-object/from16 v0, p1
invoke-static {v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
move-result-object v2
const/4 v14, 0x0
move-object/from16 v0, p1
invoke-static {v14, v0, v5}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v1
const-string v14, "(void*)"
invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-nez v14, :cond_484
const-string v14, "(void *)"
invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_4c7
:cond_484
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v14, v14, v5
sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
if-ne v14, v15, :cond_4c7
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "jlong_to_ptr(arg"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ")"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:goto_4ae
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
array-length v14, v14
add-int/lit8 v14, v14, -0x1
if-ge v5, v14, :cond_4c0
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v15, ", "
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_4c0
add-int/lit8 v5, v5, 0x1
goto :goto_45a
:cond_4c3
const-string v14, "env, obj"
goto/16 :goto_43b
:cond_4c7
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v14, v14, v5
invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z
move-result v14
if-eqz v14, :cond_4f2
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "arg"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_4ae
:cond_4f2
if-eqz v1, :cond_54e
iget-object v14, v1, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;
invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v14
if-lez v14, :cond_529
const-string v14, "("
invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v14
if-nez v14, :cond_529
const-string v14, ")"
invoke-virtual {v2, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v14
if-nez v14, :cond_529
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "("
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, ")"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_529
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "adapter"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v14, v1, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I
add-int/lit8 v14, v14, -0x1
add-int/2addr v5, v14
goto/16 :goto_4ae
:cond_54e
const-class v14, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, p1
iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v15, v15, v5
invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v14
if-eqz v14, :cond_58e
if-nez v7, :cond_58e
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "(ptr"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, " == NULL ? NULL : ptr"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "->ptr)"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_4ae
:cond_58e
instance-of v14, v7, Lcom/googlecode/javacpp/annotation/ByVal;
if-nez v14, :cond_5a0
instance-of v14, v7, Lcom/googlecode/javacpp/annotation/ByRef;
if-eqz v14, :cond_5c6
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v14, v14, v5
const-class v15, Ljava/lang/String;
if-eq v14, v15, :cond_5c6
:cond_5a0
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "*"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "ptr"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_4ae
:cond_5c6
instance-of v14, v7, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
if-eqz v14, :cond_5fa
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "(arg"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, " == NULL ? NULL : &ptr"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ")"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_4ae
:cond_5fa
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "ptr"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_4ae
:cond_61a
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
invoke-virtual {v14, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
array-length v14, v14
const/4 v15, 0x2
if-le v14, v15, :cond_638
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v0, p1
iget-object v15, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
const/16 v16, 0x2
aget-object v15, v15, v16
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_638
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
invoke-static {v14}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v14
instance-of v14, v14, Lcom/googlecode/javacpp/annotation/ByRef;
if-eqz v14, :cond_b4
move-object/from16 v0, p1
iget-object v14, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
const-class v15, Ljava/lang/String;
if-ne v14, v15, :cond_b4
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, ");\n"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "rptr = rstr.c_str()"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto/16 :goto_b4
.end method
.method private doCallback(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;Z)V
.registers 35
invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v9
invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v7
invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v5
invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
move-result-object v6
invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v12
invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v10
const/16 v26, 0x0
aget-object v26, v10, v26
const-string v27, "\\("
invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v19
const/16 v26, 0x1
const/16 v27, 0x1
move/from16 v0, v27
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v27, v0
const/16 v28, 0x0
const/16 v29, 0x1
aget-object v29, v19, v29
aput-object v29, v27, v28
invoke-static/range {v27 .. v27}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v27
aput-object v27, v19, v26
const/16 v26, 0x1
aget-object v26, v10, v26
const/16 v27, 0x1
invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "static "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "_instance;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v26, v0
move-object/from16 v0, v26
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v26, v0
if-eqz v26, :cond_e8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v27, v0
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "JNIIMPORT "
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v28, 0x0
aget-object v28, v19, v28
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
move-object/from16 v0, v19
array-length v0, v0
move/from16 v26, v0
const/16 v29, 0x1
move/from16 v0, v26
move/from16 v1, v29
if-le v0, v1, :cond_1ba
const/16 v26, 0x1
aget-object v26, v19, v26
:goto_bd
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, ";"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v27
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_e8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v27, v0
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "JNIEXPORT "
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v28, 0x0
aget-object v28, v19, v28
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
move-object/from16 v0, v19
array-length v0, v0
move/from16 v26, v0
const/16 v29, 0x1
move/from16 v0, v26
move/from16 v1, v29
if-le v0, v1, :cond_1be
const/16 v26, 0x1
aget-object v26, v19, v26
:goto_11a
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, " {"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v27
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v27, v0
new-instance v28, Ljava/lang/StringBuilder;
invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V
sget-object v26, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v26
if-eq v9, v0, :cond_1c2
const-string v26, "    return "
:goto_158
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, "_instance("
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v27
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const/4 v13, 0x0
:goto_17e
array-length v0, v7
move/from16 v26, v0
move/from16 v0, v26
if-ge v13, v0, :cond_1c5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
array-length v0, v7
move/from16 v26, v0
add-int/lit8 v26, v26, -0x1
move/from16 v0, v26
if-ge v13, v0, :cond_1b7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, ", "
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_1b7
add-int/lit8 v13, v13, 0x1
goto :goto_17e
:cond_1ba
const-string v26, ""
goto/16 :goto_bd
:cond_1be
const-string v26, ""
goto/16 :goto_11a
:cond_1c2
const-string v26, "    "
goto :goto_158
:cond_1c5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, ");"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "}"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-nez p4, :cond_1de
:goto_1dd
return-void
:cond_1de
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const/16 v28, 0x0
aget-object v28, v19, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "::operator()"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v20, ""
sget-object v26, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v26
if-eq v9, v0, :cond_25d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-static {v9}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " rarg = 0;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v20, "rarg = "
const-class v26, Ljava/lang/String;
move-object/from16 v0, v26
if-ne v9, v0, :cond_25d
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v26
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, "(jstring)"
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
:cond_25d
invoke-static {v5, v9}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v8
invoke-static {v5}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v18
invoke-static {v9}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v21
invoke-static/range {v21 .. v21}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v22
const/16 v26, 0x0
move/from16 v0, v26
move-object/from16 v1, v22
invoke-static {v0, v1, v5}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    jthrowable exc = NULL;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    JNIEnv* env;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    int attached = JavaCPP_getEnv(&env);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    if (attached < 0) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        goto end;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "{"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
array-length v0, v7
move/from16 v26, v0
if-lez v26, :cond_e4e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jvalue args["
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
array-length v0, v7
move/from16 v28, v0
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "];"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const/4 v13, 0x0
:goto_2ef
array-length v0, v7
move/from16 v26, v0
move/from16 v0, v26
if-ge v13, v0, :cond_e4e
aget-object v26, v7, v13
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isPrimitive()Z
move-result v26
if-eqz v26, :cond_355
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    args["
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "]."
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
aget-object v28, v7, v13
invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->getSignature(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
aget-object v28, v7, v13
invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_352
:cond_352
add-int/lit8 v13, v13, 0x1
goto :goto_2ef
:cond_355
aget-object v26, v6, v13
invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v16
aget-object v26, v7, v13
invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v24
invoke-static/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v25
const/16 v26, 0x0
aget-object v27, v6, v13
move/from16 v0, v26
move-object/from16 v1, v25
move-object/from16 v2, v27
invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v4
const/4 v14, 0x0
if-eqz v4, :cond_7e0
const/16 v26, 0x1
move/from16 v0, v26
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
iget-object v0, v4, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
move-object/from16 v28, v0
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " adapter"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "(arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
aget-object v26, v7, v13
const-class v27, Ljava/lang/String;
move-object/from16 v0, v26
move-object/from16 v1, v27
if-eq v0, v1, :cond_428
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jint size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = (jint)adapter"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ".size;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jlong deallocator"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ptr_to_jlong(&("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
iget-object v0, v4, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
move-object/from16 v28, v0
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "::deallocate));"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_428
const/4 v14, 0x1
:goto_429
:cond_429
const-class v26, Lcom/googlecode/javacpp/Pointer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-nez v26, :cond_451
const-class v26, Ljava/nio/Buffer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-nez v26, :cond_451
aget-object v26, v7, v13
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z
move-result v26
if-eqz v26, :cond_58f
aget-object v26, v7, v13
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isPrimitive()Z
move-result v26
if-eqz v26, :cond_58f
:cond_451
const-class v26, Lcom/googlecode/javacpp/FunctionPointer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_486
const/16 v26, 0x0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
aget-object v28, v7, v13
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "*"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
aput-object v27, v24, v26
const/16 v26, 0x1
const-string v27, ""
aput-object v27, v24, v26
invoke-static/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v25
:cond_486
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
aget-object v28, v7, v13
invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = NULL;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = NULL;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-class v26, Lcom/googlecode/javacpp/FunctionPointer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_866
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = new (std::nothrow) "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL) {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "->ptr = arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_58f
:goto_58f
const-class v26, Lcom/googlecode/javacpp/Pointer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_b1c
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "    obj"
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, " = env->AllocObject(JavaCPP_getClass(env, "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v27, v0
aget-object v28, v7, v13
invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, "));"
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v26, v0
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
const/16 v26, 0x1
aget-object v27, v6, v13
move/from16 v0, v26
move-object/from16 v1, v25
move-object/from16 v2, v27
invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v4
if-nez v4, :cond_5f5
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
move/from16 v26, v0
if-nez v26, :cond_5f5
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrRef;
move/from16 v26, v0
if-eqz v26, :cond_a99
:cond_5f5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
move-object/from16 v0, v26
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_602
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL) { "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v14, :cond_aea
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        if (deallocator"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != 0) {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "            jvalue args[3];"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            args[0].j = ptr_to_jlong(ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            args[1].i = size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            args[2].j = deallocator"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            env->CallNonvirtualVoidMethodA(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_getClass(env, "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v28, v0
const-class v29, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v28 .. v29}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "), JavaCPP_initMID, args);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        } else {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            env->SetLongField(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_addressFID, ptr_to_jlong(ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "));"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            env->SetIntField(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_limitFID, size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            env->SetIntField(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_capacityFID, size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_7a3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    args["
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "].l = obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_352
:cond_7e0
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v26, v0
if-eqz v26, :cond_7f2
aget-object v26, v7, v13
const-class v27, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, v26
move-object/from16 v1, v27
if-ne v0, v1, :cond_7fc
:cond_7f2
const-class v26, Lcom/googlecode/javacpp/FunctionPointer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_429
:cond_7fc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jint size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = 1;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jlong deallocator"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ptr_to_jlong(&JavaCPP_"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
aget-object v28, v7, v13
invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v28
invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "_deallocate);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v26, v0
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
const/4 v14, 0x1
goto/16 :goto_429
:cond_866
if-eqz v4, :cond_89a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = adapter"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_58f
:cond_89a
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v26, v0
if-eqz v26, :cond_93d
aget-object v26, v7, v13
const-class v27, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, v26
move-object/from16 v1, v27
if-eq v0, v1, :cond_93d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v27, v0
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    ptr"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v28
aget-object v26, v7, v13
move-object/from16 v0, v26
move-object/from16 v1, p2
invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
move-result v26
if-eqz v26, :cond_93a
const-string v26, " = new (std::nothrow) "
:goto_8d5
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v28, 0x1
aget-object v28, v24, v28
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, "(*("
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v28, 0x0
aget-object v28, v24, v28
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v28, 0x1
aget-object v28, v24, v28
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, ")&arg"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, ");"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v27
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_58f
:cond_93a
const-string v26, " = new "
goto :goto_8d5
:cond_93d
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v26, v0
if-nez v26, :cond_94d
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByRef;
move/from16 v26, v0
if-eqz v26, :cond_995
:cond_94d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")&arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_58f
:cond_995
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
move/from16 v26, v0
if-eqz v26, :cond_a51
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " == NULL) {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        JavaCPP_log(\"Pointer address of argument "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " is NULL in callback for "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ".\");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    } else {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")*arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_58f
:cond_a51
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_58f
:cond_a99
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL) { "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_602
:cond_aea
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        env->SetLongField(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_addressFID, ptr_to_jlong(ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "));"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_7a3
:cond_b1c
aget-object v26, v7, v13
const-class v27, Ljava/lang/String;
move-object/from16 v0, v26
move-object/from16 v1, v27
if-ne v0, v1, :cond_bc6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v27, v0
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jstring obj"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, " = (const char*)"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
if-eqz v4, :cond_bc0
const-string v26, "adapter"
:goto_b4f
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, " == NULL ? NULL : env->NewStringUTF((const char*)"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
if-eqz v4, :cond_bc3
const-string v26, "adapter"
:goto_b6b
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, ");"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v27
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    args["
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "].l = obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_352
:cond_bc0
const-string v26, "arg"
goto :goto_b4f
:cond_bc3
const-string v26, "arg"
goto :goto_b6b
:cond_bc6
aget-object v26, v7, v13
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z
move-result v26
if-eqz v26, :cond_d6f
aget-object v26, v7, v13
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isPrimitive()Z
move-result v26
if-eqz v26, :cond_d6f
if-nez v4, :cond_c0c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jint size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL ? 1 : 0;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_c0c
aget-object v26, v7, v13
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v23
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const/16 v27, 0x0
move-object/from16 v0, v23
move/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v27
invoke-static/range {v27 .. v27}, Ljava/lang/Character;->toUpperCase(C)C
move-result v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v27, 0x1
move-object/from16 v0, v23
move/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL) {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = env->New"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "Array(size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        env->Set"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "ArrayRegion(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", 0, size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", (j"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "*)ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v4, :cond_352
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (deallocator"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != 0 && ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL) {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        (*(void(*)(void*))jlong_to_ptr(deallocator"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "))((void*)ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_352
:cond_d6f
const-class v26, Ljava/nio/Buffer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_e18
if-nez v4, :cond_dab
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jint size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL ? 1 : 0;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_dab
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL) {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = env->NewDirectByteBuffer(ptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", size"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_352
:cond_e18
sget-object v26, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v27, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v28, Ljava/lang/StringBuilder;
invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V
const-string v29, "Callback \""
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v28
const-string v29, "\" has unsupported parameter type \""
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
aget-object v29, v7, v13
invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
const-string v29, "\". Compilation will most likely fail."
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v26 .. v28}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
goto/16 :goto_352
:cond_e4e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    if (obj == NULL) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        obj = env->NewGlobalRef(env->AllocObject(JavaCPP_getClass(env, "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v28, v0
move-object/from16 v0, v28
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")));"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        if (obj == NULL) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "            JavaCPP_log(\"Error creating global reference of "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " instance for callback.\");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        } else {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "            env->SetLongField(obj, JavaCPP_addressFID, ptr_to_jlong(this));"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        ptr = &"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    if (mid == NULL) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        mid = env->GetMethodID(JavaCPP_getClass(env, "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v28, v0
move-object/from16 v0, v28
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "), \""
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "\", \"("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v28
invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->getSignature([Ljava/lang/Class;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v28
invoke-static/range {v28 .. v28}, Lcom/googlecode/javacpp/Generator;->getSignature(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "\");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    if (env->IsSameObject(obj, NULL)) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        JavaCPP_log(\"Function pointer object is NULL in callback for "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ".\");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    } else if (mid == NULL) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        JavaCPP_log(\"Error getting method ID of function caller \\\""
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "\\\" for callback.\");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    } else {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v23, "Object"
invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z
move-result v26
if-eqz v26, :cond_1026
invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v23
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const/16 v27, 0x0
move-object/from16 v0, v23
move/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v27
invoke-static/range {v27 .. v27}, Ljava/lang/Character;->toUpperCase(C)C
move-result v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v27, 0x1
move-object/from16 v0, v23
move/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
:cond_1026
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v27, v0
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        "
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, "env->Call"
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v28, "MethodA(obj, mid, "
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
array-length v0, v7
move/from16 v26, v0
if-nez v26, :cond_1299
const-string v26, "NULL);"
:goto_1066
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v27
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        if ((exc = env->ExceptionOccurred()) != NULL) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "            env->ExceptionClear();"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const/4 v13, 0x0
:goto_10a6
array-length v0, v7
move/from16 v26, v0
move/from16 v0, v26
if-ge v13, v0, :cond_1358
const-class v26, Lcom/googlecode/javacpp/Pointer;
aget-object v27, v7, v13
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_1269
aget-object v26, v7, v13
invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v24
aget-object v26, v6, v13
invoke-static/range {v26 .. v26}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v16
aget-object v26, v6, v13
aget-object v27, v7, v13
invoke-static/range {v26 .. v27}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v11
invoke-static/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v25
const/16 v26, 0x1
aget-object v27, v6, v13
move/from16 v0, v26
move-object/from16 v1, v25
move-object/from16 v2, v27
invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v4
const-string v26, "void*"
const/16 v27, 0x0
aget-object v27, v24, v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v26
if-eqz v26, :cond_10ef
const/16 v26, 0x0
const-string v27, "char*"
aput-object v27, v24, v26
:cond_10ef
if-nez v4, :cond_1101
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
move/from16 v26, v0
if-nez v26, :cond_1101
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrRef;
move/from16 v26, v0
if-eqz v26, :cond_1269
:cond_1101
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = ("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v24, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")jlong_to_ptr(env->GetLongField(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_addressFID));"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v4, :cond_118f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jint rsize"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = env->GetIntField(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_limitFID);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_118f
aget-object v26, v7, v13
const-class v27, Lcom/googlecode/javacpp/annotation/Opaque;
invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v26
if-nez v26, :cond_122b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    jint rposition"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = env->GetIntField(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", JavaCPP_positionFID);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " += rposition"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v4, :cond_122b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    rsize"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " -= rposition"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_122b
if-eqz v4, :cond_129d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    adapter"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ".assign(rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ", rsize"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_1269
:cond_1269
aget-object v26, v7, v13
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isPrimitive()Z
move-result v26
if-nez v26, :cond_1295
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    env->DeleteLocalRef(obj"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_1295
add-int/lit8 v13, v13, 0x1
goto/16 :goto_10a6
:cond_1299
const-string v26, "args);"
goto/16 :goto_1066
:cond_129d
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
move/from16 v26, v0
if-eqz v26, :cond_1312
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    if (arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " != NULL) {"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        *arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = *"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "&rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_1269
:cond_1312
move-object/from16 v0, v16
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrRef;
move/from16 v26, v0
if-eqz v26, :cond_1269
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    arg"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_1269
:cond_1358
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "}"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "end:"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
sget-object v26, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v26
if-eq v9, v0, :cond_1414
const-string v26, "void*"
const/16 v27, 0x0
aget-object v27, v21, v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v26
if-eqz v26, :cond_1386
const/16 v26, 0x0
const-string v27, "char*"
aput-object v27, v21, v26
:cond_1386
const-class v26, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, v26
invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_14f6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = rarg == NULL ? NULL : ("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ")jlong_to_ptr(env->GetLongField(rarg, JavaCPP_addressFID));"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v17, :cond_13e7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    jint rsize = rarg == NULL ? 0 : env->GetIntField(rarg, JavaCPP_limitFID);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_13e7
const-class v26, Lcom/googlecode/javacpp/annotation/Opaque;
move-object/from16 v0, v26
invoke-virtual {v9, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v26
if-nez v26, :cond_1414
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    jint rposition = rarg == NULL ? 0 : env->GetIntField(rarg, JavaCPP_positionFID);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    rptr += rposition;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v17, :cond_1414
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    rsize -= rposition;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_1414
:cond_1414
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    if (exc != NULL) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        jclass cls = env->GetObjectClass(exc);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        jmethodID mid = env->GetMethodID(cls, \"toString\", \"()Ljava/lang/String;\");"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        env->DeleteLocalRef(cls);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        jstring str = (jstring)env->CallObjectMethod(exc, mid);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        env->DeleteLocalRef(exc);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        const char *msg = env->GetStringUTFChars(str, NULL);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        JavaCPP_exception e(msg);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        env->ReleaseStringUTFChars(str, msg);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        env->DeleteLocalRef(str);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        JavaCPP_detach(attached);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        throw e;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    } else {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        JavaCPP_detach(attached);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
sget-object v26, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v26
if-eq v9, v0, :cond_14e9
invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z
move-result v26
if-eqz v26, :cond_15c6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    return "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "rarg;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_14e9
:goto_14e9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "}"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_1dd
:cond_14f6
const-class v26, Ljava/lang/String;
move-object/from16 v0, v26
if-ne v9, v0, :cond_153f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = rarg == NULL ? NULL : env->GetStringUTFChars(rarg, NULL);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v17, :cond_1414
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    jint rsize = 0;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_1414
:cond_153f
const-class v26, Ljava/nio/Buffer;
move-object/from16 v0, v26
invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_158c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x0
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " rptr"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " = rarg == NULL ? NULL : env->GetDirectBufferAddress(rarg);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v17, :cond_1414
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    jint rsize = rarg == NULL ? 0 : env->GetDirectBufferCapacity(rarg);"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_1414
:cond_158c
invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z
move-result v26
if-nez v26, :cond_1414
sget-object v26, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v27, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v28, Ljava/lang/StringBuilder;
invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V
const-string v29, "Callback \""
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v28
const-string v29, "\" has unsupported return type \""
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
const-string v29, "\". Compilation will most likely fail."
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v26 .. v28}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
goto/16 :goto_1414
:cond_15c6
if-eqz v17, :cond_1606
const/16 v26, 0x1
move/from16 v0, v26
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    return "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v17
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
move-object/from16 v28, v0
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "("
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "rptr, rsize);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_14e9
:cond_1606
const-class v26, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, v26
invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v26
if-eqz v26, :cond_1636
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    return "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "(rptr == NULL ? NULL : rptr->ptr);"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_14e9
:cond_1636
move-object/from16 v0, v18
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v26, v0
if-nez v26, :cond_1646
move-object/from16 v0, v18
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByRef;
move/from16 v26, v0
if-eqz v26, :cond_16f2
:cond_1646
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    if (rptr == NULL) {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        JavaCPP_log(\"Return pointer address is NULL in callback for "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ".\");"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        static "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, " empty"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const/16 v28, 0x1
aget-object v28, v21, v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, ";"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "        return empty;"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    } else {"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "        return *"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "rptr;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
const-string v27, "    }"
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_14e9
:cond_16f2
move-object/from16 v0, v18
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
move/from16 v26, v0
if-eqz v26, :cond_1720
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    return "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "&rptr;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_14e9
:cond_1720
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v26, v0
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "    return "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
const-string v28, "rptr;"
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_14e9
.end method
.method private doCallbackAllocator(Ljava/lang/Class;Ljava/lang/String;)V
.registers 8
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "    obj = env->NewWeakGlobalRef(obj);"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "    if (obj == NULL) {"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "        JavaCPP_log(\"Error creating global reference of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " instance for callback.\");"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "        return;"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "    }"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "    "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "* rptr = new (std::nothrow) "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ";"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "    if (rptr != NULL) {"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "        rptr->ptr = &"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ";"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "        rptr->obj = obj;"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "        jvalue args[3];"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "        args[0].j = ptr_to_jlong(rptr);"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "        args[1].i = 1;"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "        args[2].j = ptr_to_jlong(&JavaCPP_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "_deallocate);"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
invoke-virtual {v1, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "        env->CallNonvirtualVoidMethodA(obj, JavaCPP_getClass(env, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
const-class v4, Lcom/googlecode/javacpp/Pointer;
invoke-virtual {v3, v4}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "), JavaCPP_initMID, args);"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "        "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "_instance = *rptr;"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "    }"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v2, "}"
invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
return-void
.end method
.method private varargs doClasses(ZZLjava/lang/String;[Ljava/lang/Class;)Z
.registers 32
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "/* DO NOT EDIT THIS FILE - IT IS MACHINE GENERATED */"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_30
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "/* DO NOT EDIT THIS FILE - IT IS MACHINE GENERATED */"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
:cond_30
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->properties:Lcom/googlecode/javacpp/Loader$ClassProperties;
move-object/from16 v22, v0
const-string v23, "generator.define"
invoke-virtual/range {v22 .. v23}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_40
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_6d
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "#define "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_40
:cond_6d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef __APPLE__"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define _JAVASOFT_JNI_MD_H_"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JNIEXPORT __attribute__((visibility(\"default\")))"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JNIIMPORT"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JNICALL"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    typedef int jint;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    typedef long long jlong;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    typedef signed char jbyte;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef _WIN32"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define _JAVASOFT_JNI_MD_H_"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JNIEXPORT __declspec(dllexport)"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JNIIMPORT __declspec(dllimport)"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JNICALL __stdcall"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    typedef int jint;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    typedef long long jlong;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    typedef signed char jbyte;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <jni.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_17e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <jni.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_17e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef ANDROID"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #include <android/log.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define NewWeakGlobalRef(obj) NewGlobalRef(obj)"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define DeleteWeakGlobalRef(obj) DeleteGlobalRef(obj)"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <stddef.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifndef _WIN32"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #include <stdint.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <stdio.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <stdlib.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <string.h>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <exception>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <new>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#define jlong_to_ptr(a) ((void*)(uintptr_t)(a))"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#define ptr_to_jlong(a) ((jlong)(uintptr_t)(a))"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#if defined(_MSC_VER)"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JavaCPP_noinline __declspec(noinline)"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JavaCPP_hidden /* hidden by default */"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#elif defined(__GNUC__)"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JavaCPP_noinline __attribute__((noinline))"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JavaCPP_hidden   __attribute__((visibility(\"hidden\")))"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#else"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JavaCPP_noinline"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    #define JavaCPP_hidden"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
const/16 v22, 0x2
move/from16 v0, v22
new-array v11, v0, [Ljava/util/List;
const/16 v22, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->properties:Lcom/googlecode/javacpp/Loader$ClassProperties;
move-object/from16 v23, v0
const-string v24, "generator.include"
invoke-virtual/range {v23 .. v24}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v23
aput-object v23, v11, v22
const/16 v22, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->properties:Lcom/googlecode/javacpp/Loader$ClassProperties;
move-object/from16 v23, v0
const-string v24, "generator.cinclude"
invoke-virtual/range {v23 .. v24}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v23
aput-object v23, v11, v22
const/4 v9, 0x0
:goto_2e7
array-length v0, v11
move/from16 v22, v0
move/from16 v0, v22
if-ge v9, v0, :cond_420
aget-object v22, v11, v9
if-eqz v22, :cond_41c
aget-object v22, v11, v9
invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I
move-result v22
if-lez v22, :cond_41c
const/16 v22, 0x1
move/from16 v0, v22
if-ne v9, v0, :cond_334
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "extern \"C\" {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_334
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef __cplusplus"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "extern \"C\" {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_334
aget-object v22, v11, v9
invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_33a
:goto_33a
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_3d9
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
const-string v13, "#include "
const-string v22, "<"
move-object/from16 v0, v19
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v22
if-nez v22, :cond_375
const-string v22, "\""
move-object/from16 v0, v19
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v22
if-nez v22, :cond_375
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const/16 v23, 0x22
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
:cond_375
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, v22
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
const-string v22, ">"
move-object/from16 v0, v19
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v22
if-nez v22, :cond_3b9
const-string v22, "\""
move-object/from16 v0, v19
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v22
if-nez v22, :cond_3b9
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const/16 v23, 0x22
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
:cond_3b9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_33a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_33a
:cond_3d9
const/16 v22, 0x1
move/from16 v0, v22
if-ne v9, v0, :cond_413
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_413
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef __cplusplus"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_413
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
:cond_41c
add-int/lit8 v9, v9, 0x1
goto/16 :goto_2e7
:cond_420
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static JavaVM* JavaCPP_vm = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "static const char* JavaCPP_classNames["
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "] = {"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v5
const/4 v15, 0x0
:goto_462
:cond_462
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_4ca
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Class;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "        \""
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v24
const/16 v25, 0x2e
const/16 v26, 0x2f
invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "\""
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_4ad
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, ","
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_4ad
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/util/LinkedList;
if-eqz v14, :cond_462
invoke-virtual {v14}, Ljava/util/LinkedList;->size()I
move-result v22
move/from16 v0, v22
if-le v0, v15, :cond_462
invoke-virtual {v14}, Ljava/util/LinkedList;->size()I
move-result v15
goto :goto_462
:cond_4ca
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, " };"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "static jclass JavaCPP_classes["
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "] = { NULL };"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static jmethodID JavaCPP_initMID = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static jfieldID JavaCPP_addressFID = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static jfieldID JavaCPP_positionFID = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static jfieldID JavaCPP_limitFID = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static jfieldID JavaCPP_capacityFID = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static inline void JavaCPP_log(const char* fmt, ...) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    va_list ap;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    va_start(ap, fmt);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef ANDROID"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    __android_log_vprint(ANDROID_LOG_ERROR, \"javacpp\", fmt, ap);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#else"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    vfprintf(stderr, fmt, ap);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    fprintf(stderr, \"\\n\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    va_end(ap);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static JavaCPP_noinline jclass JavaCPP_getClass(JNIEnv* env, int i) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_classes[i] == NULL && env->PushLocalFrame(1) == 0) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        jclass cls = env->FindClass(JavaCPP_classNames[i]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (cls == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            JavaCPP_log(\"Error loading class %s.\", JavaCPP_classNames[i]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            return NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_classes[i] = (jclass)env->NewWeakGlobalRef(cls);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (JavaCPP_classes[i] == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            JavaCPP_log(\"Error creating global reference of class %s.\", JavaCPP_classNames[i]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            return NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        env->PopLocalFrame(NULL);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    return JavaCPP_classes[i];"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "class JavaCPP_hidden JavaCPP_exception : public std::exception {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "public:"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaCPP_exception(const char* str) throw() {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (str == NULL) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            strcpy(msg, \"Unknown exception.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        } else {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            strncpy(msg, str, sizeof(msg));"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            msg[sizeof(msg) - 1] = 0;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    virtual const char* what() const throw() { return msg; }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    char msg[1024];"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "};"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
if-eqz p1, :cond_7e5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static JavaCPP_noinline jthrowable JavaCPP_handleException(JNIEnv* env, int i) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    jstring str = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    try {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        throw;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    } catch (std::exception& e) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        str = env->NewStringUTF(e.what());"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    } catch (...) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        str = env->NewStringUTF(\"Unknown exception.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    jclass cls = JavaCPP_getClass(env, i);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    jmethodID mid = env->GetMethodID(cls, \"<init>\", \"(Ljava/lang/String;)V\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (mid == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Error getting constructor ID of %s.\", JavaCPP_classNames[i]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    } else {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return (jthrowable)env->NewObject(cls, mid, str);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
:cond_7e5
if-eqz p2, :cond_ae5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <vector>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "template<typename P, typename T = P> class JavaCPP_hidden VectorAdapter {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "public:"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    VectorAdapter(const P* ptr, typename std::vector<T>::size_type size) : ptr((P*)ptr), size(size),"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        vec2(ptr ? std::vector<T>((P*)ptr, (P*)ptr + size) : std::vector<T>()), vec(vec2) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    VectorAdapter(const std::vector<T>& vec) : ptr(0), size(0), vec2(vec), vec(vec2) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    VectorAdapter(      std::vector<T>& vec) : ptr(0), size(0), vec(vec) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    void assign(P* ptr, typename std::vector<T>::size_type size) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        this->ptr = ptr;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        this->size = size;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        vec.assign(ptr, ptr + size);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    static void deallocate(P* ptr) { delete[] ptr; }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator P*() {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (vec.size() > size) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            ptr = new (std::nothrow) P[vec.size()];"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (ptr) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            std::copy(vec.begin(), vec.end(), ptr);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        size = vec.size();"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return ptr;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator const P*()        { return &vec[0]; }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator std::vector<T>&() { return vec; }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator std::vector<T>*() { return ptr ? &vec : 0; }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    P* ptr;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    typename std::vector<T>::size_type size;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    std::vector<T> vec2;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    std::vector<T>& vec;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "};"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#include <string>"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "class JavaCPP_hidden StringAdapter {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "public:"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    StringAdapter(const          char* ptr, size_t size) : ptr((char*)ptr), size(size),"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        str2(ptr ? (char*)ptr : \"\"), str(str2) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    StringAdapter(const signed   char* ptr, size_t size) : ptr((char*)ptr), size(size),"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        str2(ptr ? (char*)ptr : \"\"), str(str2) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    StringAdapter(const unsigned char* ptr, size_t size) : ptr((char*)ptr), size(size),"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        str2(ptr ? (char*)ptr : \"\"), str(str2) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    StringAdapter(const std::string& str) : ptr(0), size(0), str2(str), str(str2) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    StringAdapter(      std::string& str) : ptr(0), size(0), str(str) { }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    void assign(char* ptr, size_t size) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        this->ptr = ptr;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        this->size = size;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        str.assign(ptr ? ptr : \"\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    static void deallocate(char* ptr) { free(ptr); }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator char*() {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        const char* c_str = str.c_str();"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (ptr == NULL || strcmp(c_str, ptr) != 0) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            ptr = strdup(c_str);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        size = strlen(c_str) + 1;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return ptr;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator       signed   char*() { return (signed   char*)(operator char*)(); }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator       unsigned char*() { return (unsigned char*)(operator char*)(); }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator const          char*() { return                 str.c_str(); }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator const signed   char*() { return (signed   char*)str.c_str(); }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator const unsigned char*() { return (unsigned char*)str.c_str(); }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator         std::string&() { return str; }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    operator         std::string*() { return ptr ? &str : 0; }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    char* ptr;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    size_t size;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    std::string str2;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    std::string& str;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "};"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
:cond_ae5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->isEmpty()Z
move-result v22
if-nez v22, :cond_cc0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static JavaCPP_noinline void JavaCPP_detach(int detach) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (detach > 0 && JavaCPP_vm->DetachCurrentThread() != 0) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Could not detach the JavaVM from the current thread.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "static JavaCPP_noinline int JavaCPP_getEnv(JNIEnv** env) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    int attached = 0;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    struct {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JNIEnv **env;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        operator JNIEnv**() { return env; } // Android JNI"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        operator void**() { return (void**)env; } // standard JNI"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    } env2 = { env };"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaVM *vm = JavaCPP_vm;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (vm == NULL) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_bc8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifndef ANDROID"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        int size = 1;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (JNI_GetCreatedJavaVMs(&vm, 1, &size) != 0 || size == 0) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_bc8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            JavaCPP_log(\"Could not get any created JavaVM.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            return -1;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_c07
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifndef ANDROID"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_c07
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (vm->GetEnv((void**)env, JNI_VERSION_1_6) != JNI_OK) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (vm->AttachCurrentThread(env2, NULL) != 0) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            JavaCPP_log(\"Could not attach the JavaVM to the current thread.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            return -1;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        attached = 1;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_vm == NULL) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        if (JNI_OnLoad(vm, NULL) < 0) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            JavaCPP_detach(attached);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            return -1;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    return attached;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
:cond_cc0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_cca
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_ce4
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
move-object/from16 v0, v22
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_cca
:cond_ce4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_cf7
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_d11
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
move-object/from16 v0, v22
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_cf7
:cond_d11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_d24
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_dd6
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Class;
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "JavaCPP_"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v23
invoke-static/range {v23 .. v23}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "static void "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "_deallocate("
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-class v22, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, v22
invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v22
if-eqz v22, :cond_da2
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "* p) { JNIEnv *e; int a = JavaCPP_getEnv(&e); if (a >= 0) e->DeleteWeakGlobalRef(p->obj); delete p; JavaCPP_detach(a); }"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_d24
:cond_da2
invoke-static {v4}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const/16 v24, 0x0
aget-object v24, v20, v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " p"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const/16 v24, 0x1
aget-object v24, v20, v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ") { delete p; }"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_d24
:cond_dd6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_de0
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_e4e
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Class;
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "JavaCPP_"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v23
invoke-static/range {v23 .. v23}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static {v4}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "static void "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "_deallocateArray("
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const/16 v24, 0x0
aget-object v24, v20, v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " p"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const/16 v24, 0x1
aget-object v24, v20, v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ") { delete[] p; }"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_de0
:cond_e4e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "extern \"C\" {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_f7d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef __cplusplus"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "extern \"C\" {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "JNIIMPORT int JavaCPP_init(int argc, const char *argv[]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "JNIEXPORT int JavaCPP_init(int argc, const char *argv[]) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef ANDROID"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    return JNI_OK;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#else"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaVM *vm;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JNIEnv *env;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    int nOptions = 1 + (argc > 255 ? 255 : argc);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaVMOption options[256] = { { NULL } };"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    options[0].optionString = (char*)\"-Djava.class.path="
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const/16 v24, 0x5c
const/16 v25, 0x2f
move-object/from16 v0, p3
move/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "\";"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    for (int i = 1; i < nOptions && argv != NULL; i++) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        options[i].optionString = (char*)argv[i - 1];"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaVMInitArgs vm_args = { JNI_VERSION_1_6, nOptions, options };"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    return JNI_CreateJavaVM(&vm, (void **)&env, &vm_args);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_f7d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JNIEnv* env;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Could not get JNIEnv for JNI_VERSION_1_6 inside JNI_OnLoad().\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_vm == vm) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return env->GetVersion();"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaCPP_vm = vm;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    const char* members["
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "]["
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "] = {"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_1036
:cond_1036
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_10d0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            { "
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;
move-object/from16 v22, v0
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/util/LinkedList;
if-nez v14, :cond_10ad
const/16 v16, 0x0
:cond_105b
:goto_105b
if-eqz v16, :cond_10b2
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_10b2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v23, v0
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "\""
move-object/from16 v0, v22
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v22
check-cast v22, Ljava/lang/String;
move-object/from16 v0, v24
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v24, "\""
move-object/from16 v0, v22
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_105b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, ", "
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_105b
:cond_10ad
invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v16
goto :goto_105b
:cond_10b2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, " }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_1036
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, ","
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_1036
:cond_10d0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, " };"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    int offsets["
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "]["
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "] = {"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_111d
:goto_111d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_1206
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            { "
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Class;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/util/LinkedList;
if-nez v14, :cond_11ae
const/16 v16, 0x0
:cond_1146
:goto_1146
if-eqz v16, :cond_11e8
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_11e8
invoke-static {v4}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v20
invoke-static/range {v20 .. v20}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v17
check-cast v17, Ljava/lang/String;
const-string v22, "sizeof"
move-object/from16 v0, v22
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_11b3
const-string v22, "void"
move-object/from16 v0, v22
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_1176
const-string v21, "void*"
:cond_1176
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "sizeof("
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ")"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:goto_119c
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_1146
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, ", "
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_1146
:cond_11ae
invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v16
goto :goto_1146
:cond_11b3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "offsetof("
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ","
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ")"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_119c
:cond_11e8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, " }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_111d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, ","
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_111d
:cond_1206
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, " };"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    int memberOffsetSizes["
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "] = { "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_1247
:goto_1247
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_1285
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;
move-object/from16 v22, v0
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/util/LinkedList;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v23, v0
if-nez v14, :cond_1280
const/16 v22, 0x0
:goto_1267
move-object/from16 v0, v23
move/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_1247
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, ", "
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_1247
:cond_1280
invoke-virtual {v14}, Ljava/util/LinkedList;->size()I
move-result v22
goto :goto_1267
:cond_1285
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, " };"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    jmethodID putMemberOffsetMID = env->GetStaticMethodID(JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
const-class v25, Lcom/googlecode/javacpp/Loader;
invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "), \"putMemberOffset\", \"(Ljava/lang/String;Ljava/lang/String;I)V\");"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (putMemberOffsetMID == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Error getting method ID of Loader.putMemberOffset().\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    for (int i = 0; i < "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " && !env->ExceptionCheck(); i++) {"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        for (int j = 0; j < memberOffsetSizes[i] && !env->ExceptionCheck(); j++) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            if (env->PushLocalFrame(2) == 0) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "                jvalue args[3];"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "                args[0].l = env->NewStringUTF(JavaCPP_classNames[i]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "                args[1].l = env->NewStringUTF(members[i][j]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "                args[2].i = offsets[i][j];"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "                env->CallStaticVoidMethodA(JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
const-class v25, Lcom/googlecode/javacpp/Loader;
invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "), putMemberOffsetMID, args);"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "                env->PopLocalFrame(NULL);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "            }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    JavaCPP_initMID = env->GetMethodID(JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
const-class v25, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "), \"init\", \"(JIJ)V\");"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_initMID == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Error getting method ID of Pointer.init().\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    JavaCPP_addressFID = env->GetFieldID(JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
const-class v25, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "), \"address\", \"J\");"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_addressFID == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.address.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    JavaCPP_positionFID = env->GetFieldID(JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
const-class v25, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "), \"position\", \"I\");"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_positionFID == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.position.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    JavaCPP_limitFID = env->GetFieldID(JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
const-class v25, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "), \"limit\", \"I\");"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_limitFID == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.limit.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    JavaCPP_capacityFID = env->GetFieldID(JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
const-class v25, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "), \"capacity\", \"I\");"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (JavaCPP_capacityFID == NULL || env->ExceptionCheck()) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Error getting field ID of Pointer.capacity.\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_157e
:goto_157e
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_15d5
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Class;
const-class v22, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, v22
if-eq v4, v0, :cond_157e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    if (JavaCPP_getClass(env, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
move-object/from16 v0, v24
invoke-virtual {v0, v4}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->indexOf(Ljava/lang/Object;)I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ") == NULL) {"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return JNI_ERR;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_157e
:cond_15d5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    return env->GetVersion();"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_1673
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "JNIIMPORT int JavaCPP_uninit();"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "JNIEXPORT int JavaCPP_uninit() {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef ANDROID"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    return JNI_OK;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#else"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaVM *vm = JavaCPP_vm;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JNI_OnUnload(JavaCPP_vm, NULL);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    return vm->DestroyJavaVM();"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_1673
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "JNIEXPORT void JNICALL JNI_OnUnload(JavaVM* vm, void* reserved) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JNIEnv* env;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) {"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_log(\"Could not get JNIEnv for JNI_VERSION_1_6 inside JNI_OnUnLoad().\");"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        return;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "    for (int i = 0; i < "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I
move-result v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "; i++) {"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        env->DeleteWeakGlobalRef(JavaCPP_classes[i]);"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "        JavaCPP_classes[i] = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    }"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "    JavaCPP_vm = NULL;"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
sget-object v22, Lcom/googlecode/javacpp/Generator;->baseClasses:Ljava/util/List;
invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_1730
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-eqz v22, :cond_1742
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/Class;
move-object/from16 v0, p0
invoke-direct {v0, v6}, Lcom/googlecode/javacpp/Generator;->doMethods(Ljava/lang/Class;)Z
goto :goto_1730
:cond_1742
const/4 v7, 0x0
move-object/from16 v3, p4
array-length v12, v3
const/4 v10, 0x0
:goto_1747
if-ge v10, v12, :cond_1782
aget-object v6, v3, v10
:try_start_174b
move-object/from16 v0, p0
invoke-direct {v0, v6}, Lcom/googlecode/javacpp/Generator;->doMethods(Ljava/lang/Class;)Z
:try_end_1750
.catch Ljava/lang/NoClassDefFoundError; {:try_start_174b .. :try_end_1750} :catch_1756
move-result v22
or-int v7, v7, v22
:goto_1753
add-int/lit8 v10, v10, 0x1
goto :goto_1747
:catch_1756
move-exception v8
sget-object v22, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v23, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const-string v25, "Could not generate code for class "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v25
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
const-string v25, ": "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v22 .. v24}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
goto :goto_1753
:cond_1782
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/io/PrintWriter;->println()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
if-eqz v22, :cond_17bf
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#ifdef __cplusplus"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "}"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
move-object/from16 v22, v0
const-string v23, "#endif"
invoke-virtual/range {v22 .. v23}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_17bf
return v7
.end method
.method private doMethods(Ljava/lang/Class;)Z
.registers 26
invoke-virtual/range {p0 .. p1}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Ljava/lang/Class;)Z
move-result v20
if-nez v20, :cond_8
const/4 v5, 0x0
:goto_7
return v5
:cond_8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;
move-object/from16 v20, v0
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/util/LinkedList;
const-class v20, Lcom/googlecode/javacpp/annotation/Opaque;
move-object/from16 v0, p1
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v20
if-nez v20, :cond_55
const-class v20, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v20
if-nez v20, :cond_55
if-nez v11, :cond_44
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;
move-object/from16 v20, v0
new-instance v11, Ljava/util/LinkedList;
invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_44
const-string v20, "sizeof"
move-object/from16 v0, v20
invoke-virtual {v11, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
move-result v20
if-nez v20, :cond_55
const-string v20, "sizeof"
move-object/from16 v0, v20
invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_55
const/4 v5, 0x0
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;
move-result-object v4
const/4 v8, 0x0
:goto_5b
array-length v0, v4
move/from16 v20, v0
move/from16 v0, v20
if-ge v8, v0, :cond_85
const-class v20, Lcom/googlecode/javacpp/Pointer;
aget-object v21, v4, v8
invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v20
if-nez v20, :cond_76
const-class v20, Lcom/googlecode/javacpp/Pointer$Deallocator;
aget-object v21, v4, v8
invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v20
if-eqz v20, :cond_82
:cond_76
aget-object v20, v4, v8
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Generator;->doMethods(Ljava/lang/Class;)Z
move-result v20
or-int v5, v5, v20
:cond_82
add-int/lit8 v8, v8, 0x1
goto :goto_5b
:cond_85
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v13
array-length v0, v13
move/from16 v20, v0
move/from16 v0, v20
new-array v2, v0, [Z
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/googlecode/javacpp/Generator;->getFunctionMethod(Ljava/lang/Class;[Z)Ljava/lang/reflect/Method;
move-result-object v7
if-eqz v7, :cond_164
invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v19
const/16 v20, 0x0
aget-object v20, v19, v20
const-string v21, "\\("
invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v17
const/16 v20, 0x1
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v21, v0
const/16 v22, 0x0
const/16 v23, 0x1
aget-object v23, v17, v23
aput-object v23, v21, v22
invoke-static/range {v21 .. v21}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
aput-object v21, v17, v20
const/16 v20, 0x1
aget-object v20, v19, v20
const/16 v21, 0x1
invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v16
invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v20, v0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "struct JavaCPP_hidden "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, " {\n"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "    "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "() : ptr(NULL), obj(NULL) { }\n"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "    "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const/16 v22, 0x0
aget-object v22, v17, v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "operator()"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, ";\n"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "    "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const/16 v22, 0x0
aget-object v22, v19, v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "ptr"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const/16 v22, 0x1
aget-object v22, v19, v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, ";\n"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "    jobject obj; static jmethodID mid;\n"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "};\n"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "jmethodID "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "::mid = NULL;"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
:cond_164
const/4 v6, 0x1
const/4 v8, 0x0
:goto_166
array-length v0, v13
move/from16 v20, v0
move/from16 v0, v20
if-ge v8, v0, :cond_5af
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v21
invoke-static/range {v21 .. v21}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "_"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
aget-object v21, v13, v8
invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v21
invoke-static/range {v21 .. v21}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
aget-object v20, v13, v8
const-class v21, Lcom/googlecode/javacpp/annotation/Platform;
invoke-virtual/range {v20 .. v21}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v20
check-cast v20, Lcom/googlecode/javacpp/annotation/Platform;
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z
move-result v20
if-nez v20, :cond_1ad
:goto_1aa
:cond_1aa
add-int/lit8 v8, v8, 0x1
goto :goto_166
:cond_1ad
aget-object v20, v13, v8
invoke-static/range {v20 .. v20}, Lcom/googlecode/javacpp/Generator;->getMethodInformation(Ljava/lang/reflect/Method;)Lcom/googlecode/javacpp/Generator$MethodInformation;
move-result-object v12
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v21, "JavaCPP_"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "_callback"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aget-boolean v20, v2, v8
if-eqz v20, :cond_1f9
if-nez v7, :cond_1f9
sget-object v20, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v21, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "No callback method call() or apply() has been not declared in \""
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\". No code will be generated for callback allocator."
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
goto :goto_1aa
:cond_1f9
aget-boolean v20, v2, v8
if-nez v20, :cond_209
aget-object v20, v13, v8
move-object/from16 v0, v20
invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_23f
if-nez v12, :cond_23f
:cond_209
aget-object v20, v13, v8
const-class v21, Lcom/googlecode/javacpp/annotation/Name;
invoke-virtual/range {v20 .. v21}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v14
check-cast v14, Lcom/googlecode/javacpp/annotation/Name;
if-eqz v14, :cond_236
invoke-interface {v14}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
array-length v0, v0
move/from16 v20, v0
if-lez v20, :cond_236
invoke-interface {v14}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;
move-result-object v20
const/16 v21, 0x0
aget-object v20, v20, v21
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
move-result v20
if-lez v20, :cond_236
invoke-interface {v14}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;
move-result-object v20
const/16 v21, 0x0
aget-object v3, v20, v21
:cond_236
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v7, v3, v6}, Lcom/googlecode/javacpp/Generator;->doCallback(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;Z)V
const/4 v6, 0x0
const/4 v5, 0x1
:cond_23f
if-eqz v12, :cond_1aa
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
move/from16 v20, v0
if-nez v20, :cond_24d
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
move/from16 v20, v0
if-eqz v20, :cond_27c
:cond_24d
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z
move/from16 v20, v0
if-nez v20, :cond_27c
if-eqz v11, :cond_27c
iget v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v20
if-nez v20, :cond_27c
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
move-object/from16 v20, v0
const/16 v21, 0x0
aget-object v20, v20, v21
move-object/from16 v0, v20
invoke-virtual {v11, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
move-result v20
if-nez v20, :cond_27c
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
move-object/from16 v20, v0
const/16 v21, 0x0
aget-object v20, v20, v21
move-object/from16 v0, v20
invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_27c
const/4 v5, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "JNIEXPORT "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v22, v0
invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, " JNICALL Java_"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->overloaded:Z
move/from16 v20, v0
if-eqz v20, :cond_2db
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "__"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v22, v0
invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->getSignature([Ljava/lang/Class;)Ljava/lang/String;
move-result-object v22
invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_2db
iget v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v20
if-eqz v20, :cond_333
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "(JNIEnv* env, jclass cls"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:goto_2f0
const/4 v10, 0x0
:goto_2f1
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v20, v0
move-object/from16 v0, v20
array-length v0, v0
move/from16 v20, v0
move/from16 v0, v20
if-ge v10, v0, :cond_33f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, ", "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v22, v0
aget-object v22, v22, v10
invoke-static/range {v22 .. v22}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, " arg"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
add-int/lit8 v10, v10, 0x1
goto :goto_2f1
:cond_333
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "(JNIEnv* env, jobject obj"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_2f0
:cond_33f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, ") {"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
aget-boolean v20, v2, v8
if-eqz v20, :cond_357
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v3}, Lcom/googlecode/javacpp/Generator;->doCallbackAllocator(Ljava/lang/Class;Ljava/lang/String;)V
goto/16 :goto_1aa
:cond_357
iget v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v20
if-nez v20, :cond_511
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
move/from16 v20, v0
if-nez v20, :cond_511
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
move/from16 v20, v0
if-nez v20, :cond_511
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z
move/from16 v20, v0
if-nez v20, :cond_511
invoke-static/range {p1 .. p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v19
const-string v20, "void*"
const/16 v21, 0x0
aget-object v21, v19, v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_578
const/16 v20, 0x0
const-string v21, "char*"
aput-object v21, v19, v20
:cond_389
:goto_389
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "    "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const/16 v22, 0x0
aget-object v22, v19, v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, " ptr"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const/16 v22, 0x1
aget-object v22, v19, v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, " = ("
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const/16 v22, 0x0
aget-object v22, v19, v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const/16 v22, 0x1
aget-object v22, v19, v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, ")jlong_to_ptr(env->GetLongField(obj, JavaCPP_addressFID));"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    if (ptr == NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "        env->ThrowNew(JavaCPP_getClass(env, "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
const-class v23, Ljava/lang/NullPointerException;
invoke-virtual/range {v22 .. v23}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "), \"This pointer address is NULL.\");"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v21, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "        return"
move-object/from16 v0, v20
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
sget-object v23, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v20
move-object/from16 v1, v23
if-ne v0, v1, :cond_5a7
const-string v20, ";"
:goto_42f
move-object/from16 v0, v22
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    }"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-class v20, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v20
if-eqz v20, :cond_4d3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    if (ptr->ptr == NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "        env->ThrowNew(JavaCPP_getClass(env, "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v22, v0
const-class v23, Ljava/lang/NullPointerException;
invoke-virtual/range {v22 .. v23}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "), \"This function pointer address is NULL.\");"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v21, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "        return"
move-object/from16 v0, v20
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
sget-object v23, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v20
move-object/from16 v1, v23
if-ne v0, v1, :cond_5ab
const-string v20, ";"
:goto_4b5
move-object/from16 v0, v22
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    }"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_4d3
const-class v20, Lcom/googlecode/javacpp/annotation/Opaque;
move-object/from16 v0, p1
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v20
if-nez v20, :cond_511
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    jint position = env->GetIntField(obj, JavaCPP_positionFID);"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    ptr += position;"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z
move/from16 v20, v0
if-eqz v20, :cond_511
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    jint size = env->GetIntField(obj, JavaCPP_limitFID);"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    size -= position;"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_511
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/googlecode/javacpp/Generator;->doParametersBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/googlecode/javacpp/Generator;->doReturnBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-direct {v0, v12, v1}, Lcom/googlecode/javacpp/Generator;->doCall(Lcom/googlecode/javacpp/Generator$MethodInformation;Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/googlecode/javacpp/Generator;->doReturnAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/googlecode/javacpp/Generator;->doParametersAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
move-object/from16 v20, v0
if-eqz v20, :cond_554
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    if (exc != NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "        env->Throw(exc);"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    }"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_554
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
sget-object v21, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v20
move-object/from16 v1, v21
if-eq v0, v1, :cond_56b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "    return rarg;"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_56b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
const-string v21, "}"
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_1aa
:cond_578
const-class v20, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v20
if-eqz v20, :cond_389
const/16 v20, 0x0
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "*"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x1
const-string v21, ""
aput-object v21, v19, v20
goto/16 :goto_389
:cond_5a7
const-string v20, " 0;"
goto/16 :goto_42f
:cond_5ab
const-string v20, " 0;"
goto/16 :goto_4b5
:cond_5af
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Ljava/io/PrintWriter;->println()V
goto/16 :goto_7
.end method
.method private doParametersAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
.registers 16
const/4 v13, 0x1
const/4 v12, 0x0
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
if-eqz v8, :cond_41
iput-boolean v13, p0, Lcom/googlecode/javacpp/Generator;->mayThrowExceptions:Z
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v9, "    } catch (...) {"
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        exc = JavaCPP_handleException(env, "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-object v10, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
iget-object v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v9, "    }"
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V
:cond_41
const/4 v3, 0x0
:goto_42
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
array-length v8, v8
if-ge v3, v8, :cond_3b8
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z
aget-boolean v8, v8, v3
if-eqz v8, :cond_50
:goto_4d
:cond_4d
add-int/lit8 v3, v3, 0x1
goto :goto_42
:cond_50
invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;
move-result-object v5
invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
move-result-object v2
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
aget-object v8, v8, v3
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v9, v9, v3
invoke-static {v8, v9}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v7
invoke-static {v13, p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v1
const-string v8, "void*"
aget-object v9, v7, v12
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_76
const-string v8, "char*"
aput-object v8, v7, v12
:cond_76
const-class v8, Lcom/googlecode/javacpp/Pointer;
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v9, v9, v3
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-eqz v8, :cond_2a5
if-eqz v1, :cond_22d
const/4 v4, 0x0
:goto_85
iget v8, v1, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I
if-ge v4, v8, :cond_4d
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v12
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " rptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
add-int v10, v3, v4
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v13
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "adapter"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ";"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v9, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    jint rsize"
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
add-int v10, v3, v4
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v10, " = (jint)adapter"
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v10, ".size"
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
if-lez v4, :cond_229
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
add-int/lit8 v11, v4, 0x1
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v11, ";"
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
:goto_109
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    if (rptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
add-int v10, v3, v4
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " != "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
add-int v10, v3, v4
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ") {"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v9, "        jvalue args[3];"
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        args[0].j = ptr_to_jlong(rptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
add-int v10, v3, v4
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        args[1].i = rsize"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
add-int v10, v3, v4
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ";"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        args[2].j = ptr_to_jlong(&("
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-object v10, v1, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "::deallocate));"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        env->CallNonvirtualVoidMethodA(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", JavaCPP_getClass(env, "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-object v10, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
const-class v11, Lcom/googlecode/javacpp/Pointer;
invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "), JavaCPP_initMID, args);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v9, "    } else {"
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        env->SetIntField(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", JavaCPP_limitFID, rsize"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
add-int v10, v3, v4
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " + position"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
add-int v10, v3, v4
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v9, "    }"
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
add-int/lit8 v4, v4, 0x1
goto/16 :goto_85
:cond_229
const-string v8, ";"
goto/16 :goto_109
:cond_22d
instance-of v8, v5, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
if-nez v8, :cond_235
instance-of v8, v5, Lcom/googlecode/javacpp/annotation/ByPtrRef;
if-eqz v8, :cond_4d
:cond_235
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v8, :cond_4d
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-nez v8, :cond_4d
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
const-class v9, Lcom/googlecode/javacpp/annotation/Opaque;
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v8
if-nez v8, :cond_271
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " -= position"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ";"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_271
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    if (arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " != NULL) env->SetLongField(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", JavaCPP_addressFID, ptr_to_jlong(ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "));"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_4d
:cond_2a5
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
const-class v9, Ljava/lang/String;
if-ne v8, v9, :cond_2e1
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    if (arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " != NULL) env->ReleaseStringUTFChars(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_4d
:cond_2e1
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z
move-result v8
if-eqz v8, :cond_4d
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z
move-result v8
if-eqz v8, :cond_4d
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    if (arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " != NULL) "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
if-nez v8, :cond_327
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v8, :cond_327
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
if-nez v8, :cond_327
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v8, :cond_351
:cond_327
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "env->ReleasePrimitiveArrayCritical(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", 0);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_4d
:cond_351
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C
move-result v9
invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C
move-result v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "env->Release"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "ArrayElements(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", (j"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "*)ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", 0);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_4d
:cond_3b8
return-void
.end method
.method private doParametersBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
.registers 16
const/4 v13, 0x1
const/4 v12, 0x0
const-string v1, ""
const/4 v5, 0x0
const/4 v3, 0x0
:goto_6
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
array-length v8, v8
if-ge v3, v8, :cond_57f
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z
move-result v8
if-nez v8, :cond_d6
invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;
move-result-object v4
invoke-static {p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
move-result-object v2
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v7
invoke-static {v12, p1, v3}, Lcom/googlecode/javacpp/Generator;->getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v0
const-class v8, Lcom/googlecode/javacpp/FunctionPointer;
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v9, v9, v3
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-eqz v8, :cond_86
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
const-class v9, Lcom/googlecode/javacpp/FunctionPointer;
if-ne v8, v9, :cond_65
sget-object v8, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Method \""
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "\" has an abstract FunctionPointer parameter, "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "but a concrete subclass is required. Compilation will most likely fail."
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
:cond_65
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v9, v9, v3
invoke-direct {p0, v9}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "*"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
aput-object v8, v7, v12
const-string v8, ""
aput-object v8, v7, v13
:cond_86
aget-object v8, v7, v12
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v8
if-eqz v8, :cond_94
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z
aget-boolean v8, v8, v3
if-eqz v8, :cond_da
:cond_94
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z
aput-boolean v13, v8, v3
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v8
aput-object v8, v7, v12
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v12
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ";"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_d6
:goto_d6
add-int/lit8 v3, v3, 0x1
goto/16 :goto_6
:cond_da
const-string v8, "void*"
aget-object v9, v7, v12
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_e8
const-string v8, "char*"
aput-object v8, v7, v12
:cond_e8
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v12
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v13
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-class v8, Lcom/googlecode/javacpp/Pointer;
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v9, v9, v3
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-eqz v8, :cond_361
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? NULL : ("
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v12
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v13
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ")jlong_to_ptr(env->GetLongField(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", JavaCPP_addressFID));"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-nez v3, :cond_174
const-class v8, Lcom/googlecode/javacpp/FunctionPointer;
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-eqz v8, :cond_174
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
const-class v9, Lcom/googlecode/javacpp/annotation/Namespace;
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v8
if-nez v8, :cond_17c
:cond_174
instance-of v8, v4, Lcom/googlecode/javacpp/annotation/ByVal;
if-nez v8, :cond_17c
instance-of v8, v4, Lcom/googlecode/javacpp/annotation/ByRef;
if-eqz v8, :cond_1f1
:cond_17c
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    if (ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL) {"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        env->ThrowNew(JavaCPP_getClass(env, "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-object v10, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
const-class v11, Ljava/lang/NullPointerException;
invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "), \"Pointer address of argument "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " is NULL.\");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v9, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "        return"
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne v8, v11, :cond_35d
const-string v8, ";"
:goto_1df
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v9, "    }"
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_1f1
if-nez v0, :cond_1f5
if-eqz v5, :cond_227
:cond_1f5
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    jint size"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? 0 : env->GetIntField(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", JavaCPP_limitFID);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_227
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
const-class v9, Lcom/googlecode/javacpp/annotation/Opaque;
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v8
if-nez v8, :cond_2b9
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    jint position"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? 0 : env->GetIntField(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", JavaCPP_positionFID);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    ptr"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " += position"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ";"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-nez v0, :cond_291
if-eqz v5, :cond_2b9
:cond_291
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    size"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " -= position"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ";"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_2b9
:cond_2b9
if-eqz v0, :cond_2e3
iput-boolean v13, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "    "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, v0, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " adapter"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "("
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object v5, v0
:cond_2e3
if-eqz v5, :cond_33c
const-class v8, Lcom/googlecode/javacpp/FunctionPointer;
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-nez v8, :cond_300
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_300
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "ptr"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ", size"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget v8, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I
add-int/lit8 v8, v8, -0x1
iput v8, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I
if-lez v8, :cond_33c
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ", "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_33c
if-eqz v5, :cond_d6
iget v8, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I
if-gtz v8, :cond_d6
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const/4 v5, 0x0
goto/16 :goto_d6
:cond_35d
const-string v8, " 0;"
goto/16 :goto_1df
:cond_361
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
const-class v9, Ljava/lang/String;
if-ne v8, v9, :cond_3b5
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? NULL : env->GetStringUTFChars(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", NULL);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-nez v0, :cond_395
if-eqz v5, :cond_2b9
:cond_395
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    jint size"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = 0;"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_2b9
:cond_3b5
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z
move-result v8
if-eqz v8, :cond_4ad
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z
move-result v8
if-eqz v8, :cond_4ad
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? NULL : "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v8, v8, v3
invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
if-nez v8, :cond_407
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v8, :cond_407
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
if-nez v8, :cond_407
iget-boolean v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v8, :cond_467
:cond_407
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "(j"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "*)env->GetPrimitiveArrayCritical(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", NULL);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_42f
if-nez v0, :cond_433
if-eqz v5, :cond_2b9
:cond_433
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    jint size"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? 0 : env->GetArrayLength(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_2b9
:cond_467
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C
move-result v9
invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C
move-result v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "env->Get"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "ArrayElements(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", NULL);"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_42f
:cond_4ad
const-class v8, Ljava/nio/Buffer;
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v9, v9, v3
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-eqz v8, :cond_52b
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? NULL : ("
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v12
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
aget-object v10, v7, v13
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ")env->GetDirectBufferAddress(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-nez v0, :cond_4f7
if-eqz v5, :cond_2b9
:cond_4f7
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "    jint size"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " = arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " == NULL ? 0 : env->GetDirectBufferCapacity(arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ");"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_2b9
:cond_52b
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "arg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ";"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
sget-object v8, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Method \""
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "\" has an unsupported parameter of type \""
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v11, v11, v3
invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "\". Compilation will most likely fail."
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
goto/16 :goto_2b9
:cond_57f
return-void
.end method
.method private doReturnAfter(Lcom/googlecode/javacpp/Generator$MethodInformation;)V
.registers 25
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
move-object/from16 v19, v0
if-eqz v19, :cond_224
const-string v10, "        "
:goto_a
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
move-object/from16 v19, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-static/range {v19 .. v20}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v17
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v14
invoke-static/range {v17 .. v17}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
const/16 v19, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
move-object/from16 v20, v0
move/from16 v0, v19
move-object/from16 v1, v18
move-object/from16 v2, v20
invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v5
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z
move/from16 v19, v0
if-eqz v19, :cond_228
const-string v16, ""
:goto_44
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isPrimitive()Z
move-result v19
if-nez v19, :cond_69
if-eqz v5, :cond_69
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, ")"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
:cond_69
const-class v19, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v19
if-nez v19, :cond_93
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z
move-result v19
if-eqz v19, :cond_b0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isPrimitive()Z
move-result v19
if-eqz v19, :cond_b0
:cond_93
instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v19, v0
if-eqz v19, :cond_22c
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, ")"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
:cond_b0
:goto_b0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
sget-object v20, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v19
move-object/from16 v1, v20
if-ne v0, v1, :cond_372
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
move/from16 v19, v0
if-nez v19, :cond_db
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
move/from16 v19, v0
if-eqz v19, :cond_223
:cond_db
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v21, "jint rcapacity = "
move-object/from16 v0, v19
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
move/from16 v19, v0
if-eqz v19, :cond_2ef
const-string v19, "arg0;"
:goto_100
move-object/from16 v0, v21
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v19, v0
const-class v20, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, v19
move-object/from16 v1, v20
if-eq v0, v1, :cond_12f
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v19, v0
const-class v20, Lcom/googlecode/javacpp/annotation/NoDeallocator;
invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v19
if-eqz v19, :cond_2f3
:cond_12f
const/4 v13, 0x1
:goto_130
move-object/from16 v0, p1
iget-object v6, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
array-length v11, v6
const/4 v9, 0x0
:goto_136
if-ge v9, v11, :cond_141
aget-object v4, v6, v9
instance-of v0, v4, Lcom/googlecode/javacpp/annotation/NoDeallocator;
move/from16 v19, v0
if-eqz v19, :cond_2f6
const/4 v13, 0x1
:cond_141
if-nez v13, :cond_316
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "jvalue args[3];"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "args[0].j = ptr_to_jlong(rptr);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "args[1].i = rcapacity;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "args[2].j = ptr_to_jlong(&JavaCPP_"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v21
invoke-static/range {v21 .. v21}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
move/from16 v19, v0
if-eqz v19, :cond_2fa
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
const-string v20, "_deallocateArray);"
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v19, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
:goto_1ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "env->CallNonvirtualVoidMethodA(obj, JavaCPP_getClass(env, "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v21, v0
const-class v22, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v21 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "), JavaCPP_initMID, args);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_223
:goto_223
return-void
:cond_224
const-string v10, "    "
goto/16 :goto_a
:cond_228
const-string v16, ";"
goto/16 :goto_44
:cond_22c
instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
move/from16 v19, v0
if-eqz v19, :cond_b0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v16, ""
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "if (rptrptr == NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    env->ThrowNew(JavaCPP_getClass(env, "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v21, v0
const-class v22, Ljava/lang/NullPointerException;
invoke-virtual/range {v21 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "), \"Return pointer address is NULL.\");"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "} else {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    rptr = *rptrptr;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "}"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_b0
:cond_2ef
const-string v19, "1;"
goto/16 :goto_100
:cond_2f3
const/4 v13, 0x0
goto/16 :goto_130
:cond_2f6
add-int/lit8 v9, v9, 0x1
goto/16 :goto_136
:cond_2fa
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
const-string v20, "_deallocate);"
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v19, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
goto/16 :goto_1ef
:cond_316
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "env->SetLongField(obj, JavaCPP_addressFID, ptr_to_jlong(rptr));"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "env->SetIntField(obj, JavaCPP_limitFID, rcapacity);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "env->SetIntField(obj, JavaCPP_capacityFID, rcapacity);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_223
:cond_372
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
move/from16 v19, v0
if-nez v19, :cond_223
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
move/from16 v19, v0
if-nez v19, :cond_223
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z
move/from16 v19, v0
if-nez v19, :cond_223
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isPrimitive()Z
move-result v19
if-eqz v19, :cond_3ca
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "rarg = ("
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v21, v0
invoke-static/range {v21 .. v21}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, ")rvalue;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_223
:cond_3ca
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z
move/from16 v19, v0
if-eqz v19, :cond_3f2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "rarg = rptr;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_223
:cond_3f2
const/4 v12, 0x0
if-eqz v5, :cond_57f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "rptr = radapter;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
const-class v20, Ljava/lang/String;
move-object/from16 v0, v19
move-object/from16 v1, v20
if-eq v0, v1, :cond_475
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "jint rcapacity = (jint)radapter.size;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v20, v0
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v21, "jlong deallocator = "
move-object/from16 v0, v19
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
iget-boolean v0, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->constant:Z
move/from16 v19, v0
if-eqz v19, :cond_554
const-string v19, "0;"
:goto_462
move-object/from16 v0, v21
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_475
const/4 v12, 0x1
:goto_476
:cond_476
const-class v19, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v19
if-eqz v19, :cond_842
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v19, v0
if-nez v19, :cond_65e
move-object/from16 v0, p1
iget v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v19
if-eqz v19, :cond_5f9
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v19, v0
move-object/from16 v0, v19
array-length v0, v0
move/from16 v19, v0
if-lez v19, :cond_5f9
const/4 v8, 0x0
:goto_4af
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v19, v0
move-object/from16 v0, v19
array-length v0, v0
move/from16 v19, v0
move/from16 v0, v19
if-ge v8, v0, :cond_65e
move-object/from16 v0, p1
invoke-static {v0, v8}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
move-result-object v7
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v19, v0
aget-object v19, v19, v8
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
move-object/from16 v0, v19
move-object/from16 v1, v20
if-ne v0, v1, :cond_550
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v21, "if (rptr == "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "ptr"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, ") {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    rarg = arg"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, ";"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "} else "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_550
add-int/lit8 v8, v8, 0x1
goto/16 :goto_4af
:cond_554
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "ptr_to_jlong(&("
move-object/from16 v0, v19
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
iget-object v0, v5, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
move-object/from16 v22, v0
move-object/from16 v0, v19
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v22, "::deallocate));"
move-object/from16 v0, v19
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
goto/16 :goto_462
:cond_57f
instance-of v0, v14, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v19, v0
if-nez v19, :cond_593
const-class v19, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v19
if-eqz v19, :cond_476
:cond_593
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "jint rcapacity = 1;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "jlong deallocator = ptr_to_jlong(&JavaCPP_"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v21
invoke-static/range {v21 .. v21}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "_deallocate);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v19, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
const/4 v12, 0x1
goto/16 :goto_476
:cond_5f9
move-object/from16 v0, p1
iget v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v19
if-nez v19, :cond_65e
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v19, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
move-object/from16 v0, v19
move-object/from16 v1, v20
if-ne v0, v1, :cond_65e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
const-string v20, "if (rptr == ptr) {"
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    rarg = obj;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "} else "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:cond_65e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
const-string v20, "if (rptr != NULL) {"
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    rarg = env->AllocObject(JavaCPP_getClass(env, "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v21, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "));"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v12, :cond_823
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    if (deallocator != 0) {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        jvalue args[3];"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        args[0].j = ptr_to_jlong(rptr);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        args[1].i = rcapacity;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        args[2].j = deallocator;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        env->CallNonvirtualVoidMethodA(rarg, JavaCPP_getClass(env, "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
move-object/from16 v21, v0
const-class v22, Lcom/googlecode/javacpp/Pointer;
invoke-virtual/range {v21 .. v22}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "), JavaCPP_initMID, args);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    } else {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        env->SetLongField(rarg, JavaCPP_addressFID, ptr_to_jlong(rptr));"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        env->SetIntField(rarg, JavaCPP_limitFID, rcapacity);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "        env->SetIntField(rarg, JavaCPP_capacityFID, rcapacity);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    }"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_803
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "}"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_223
:cond_823
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    env->SetLongField(rarg, JavaCPP_addressFID, ptr_to_jlong(rptr));"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_803
:cond_842
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
const-class v20, Ljava/lang/String;
move-object/from16 v0, v19
move-object/from16 v1, v20
if-ne v0, v1, :cond_8ac
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "if (rptr != NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    rarg = env->NewStringUTF(rptr);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "}"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_223
:cond_8ac
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z
move-result v19
if-eqz v19, :cond_a15
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isPrimitive()Z
move-result v19
if-eqz v19, :cond_a15
if-nez v5, :cond_8e8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "jint rcapacity = rptr != NULL ? 1 : 0;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_8e8
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v15
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const/16 v20, 0x0
move/from16 v0, v20
invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C
move-result v20
invoke-static/range {v20 .. v20}, Ljava/lang/Character;->toUpperCase(C)C
move-result v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v19
const/16 v20, 0x1
move/from16 v0, v20
invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "if (rptr != NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    rarg = env->New"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "Array(rcapacity);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    env->Set"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "ArrayRegion(rarg, 0, rcapacity, (j"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "*)rptr);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "}"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
if-eqz v5, :cond_223
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "if (deallocator != 0 && rptr != NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    (*(void(*)(void*))jlong_to_ptr(deallocator))((void*)rptr);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "}"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_223
:cond_a15
const-class v19, Ljava/nio/Buffer;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v19
if-eqz v19, :cond_223
move-object/from16 v0, p1
iget-boolean v0, v0, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z
move/from16 v19, v0
if-eqz v19, :cond_aa5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "jint rcapacity = size;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_a49
:goto_a49
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "if (rptr != NULL) {"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "    rarg = env->NewDirectByteBuffer(rptr, rcapacity);"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "}"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_223
:cond_aa5
if-nez v5, :cond_a49
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
move-object/from16 v19, v0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "jint rcapacity = rptr != NULL ? 1 : 0;"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_a49
.end method
.method private doReturnBefore(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;
.registers 14
const/4 v11, 0x1
const/4 v10, 0x0
const-string v3, ""
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne v6, v7, :cond_86
iget-boolean v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
if-nez v6, :cond_12
iget-boolean v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
if-eqz v6, :cond_73
:cond_12
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
const-class v7, Lcom/googlecode/javacpp/Pointer;
if-eq v6, v7, :cond_4c
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "    if (!env->IsSameObject(env->GetObjectClass(obj), JavaCPP_getClass(env, "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
invoke-virtual {v8, v9}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->register(Ljava/lang/Object;)I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "))) {"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "        return;"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    }"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_4c
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
invoke-static {v6}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v4
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
aget-object v7, v4, v10
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " rptr"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v4, v11
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:cond_73
:goto_73
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
if-eqz v6, :cond_85
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    jthrowable exc = NULL;"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    try {"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_85
return-object v3
:cond_86
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-static {v6, v7}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v1
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-static {v6, v7}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v4
iget-boolean v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v6, :cond_a2
iget-boolean v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-nez v6, :cond_a2
iget-boolean v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z
if-eqz v6, :cond_aa
:cond_a2
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    jobject rarg = obj;"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_73
:cond_aa
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z
move-result v6
if-eqz v6, :cond_fd
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "    "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " rarg = 0;"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
aget-object v7, v4, v10
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " rvalue"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v4, v11
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto/16 :goto_73
:cond_fd
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
invoke-static {v6}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v2
invoke-static {v4}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "rptr = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aget-object v6, v4, v10
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-eqz v6, :cond_126
iget-boolean v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z
if-eqz v6, :cond_191
:cond_126
iput-boolean v11, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-static {v6}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v10
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "    "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
aget-object v8, v4, v10
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " rarg = NULL;"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "    "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
aget-object v8, v4, v10
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " rptr;"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_170
:goto_170
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
invoke-static {v10, v5, v6}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v0
if-eqz v0, :cond_73
iput-boolean v11, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, v0, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " radapter("
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto/16 :goto_73
:cond_191
const-class v6, Lcom/googlecode/javacpp/Pointer;
iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-nez v6, :cond_1b9
const-class v6, Ljava/nio/Buffer;
iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-nez v6, :cond_1b9
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z
move-result v6
if-eqz v6, :cond_309
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z
move-result v6
if-eqz v6, :cond_309
:cond_1b9
const-class v6, Lcom/googlecode/javacpp/FunctionPointer;
iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-eqz v6, :cond_1e8
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-direct {p0, v7}, Lcom/googlecode/javacpp/Generator;->getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "*"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v10
const-string v6, ""
aput-object v6, v4, v11
invoke-static {v4}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v3, "if (rptr != NULL) rptr->ptr = "
:cond_1e8
instance-of v6, v2, Lcom/googlecode/javacpp/annotation/ByVal;
if-eqz v6, :cond_258
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
invoke-static {v6, v8}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
move-result v6
if-eqz v6, :cond_255
const-string v6, "new (std::nothrow) "
:goto_201
invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v4, v11
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "("
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:goto_219
:cond_219
iget-boolean v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z
if-eqz v6, :cond_2b7
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    jobject rarg = NULL;"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    char* rptr;"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_22b
const-class v6, Lcom/googlecode/javacpp/FunctionPointer;
iget-object v7, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-eqz v6, :cond_170
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "    rptr = new (std::nothrow) "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ";"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_170
:cond_255
const-string v6, "new "
goto :goto_201
:cond_258
instance-of v6, v2, Lcom/googlecode/javacpp/annotation/ByRef;
if-eqz v6, :cond_270
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "&"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_219
:cond_270
instance-of v6, v2, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
if-eqz v6, :cond_219
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_28a
aget-object v6, v4, v10
aget-object v7, v4, v10
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
add-int/lit8 v7, v7, -0x1
invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v10
:cond_28a
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "rptr = NULL; "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v4, v10
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "* rptrptr"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v4, v11
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto/16 :goto_219
:cond_2b7
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "    "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " rarg = NULL;"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "    "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
aget-object v8, v4, v10
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " rptr"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
aget-object v8, v4, v11
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ";"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto/16 :goto_22b
:cond_309
iget-object v6, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
const-class v7, Ljava/lang/String;
if-ne v6, v7, :cond_33a
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    jstring rarg = NULL;"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v6, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const-string v7, "    const char* rptr;"
invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
instance-of v6, v2, Lcom/googlecode/javacpp/annotation/ByRef;
if-eqz v6, :cond_325
const-string v3, "std::string rstr("
goto/16 :goto_170
:cond_325
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "(const char*)"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto/16 :goto_170
:cond_33a
sget-object v6, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Method \""
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\" has unsupported return type \""
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\". Compilation will most likely fail."
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
goto/16 :goto_170
.end method
.method public static varargs getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
.registers 21
const/4 v3, 0x0
const/4 v8, 0x0
const-string v6, ""
move-object/from16 v4, p2
array-length v12, v4
const/4 v11, 0x0
:goto_8
if-ge v11, v12, :cond_133
aget-object v1, v4, v11
instance-of v14, v1, Lcom/googlecode/javacpp/annotation/Adapter;
if-eqz v14, :cond_dc
move-object v14, v1
check-cast v14, Lcom/googlecode/javacpp/annotation/Adapter;
move-object v2, v14
:goto_14
if-eqz v2, :cond_116
new-instance v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;
invoke-direct {v3}, Lcom/googlecode/javacpp/Generator$AdapterInformation;-><init>()V
invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Adapter;->value()Ljava/lang/String;
move-result-object v14
iput-object v14, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Adapter;->argc()I
move-result v14
iput v14, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->argc:I
if-eq v1, v2, :cond_d8
:try_start_29
invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v7
const-class v14, Lcom/googlecode/javacpp/annotation/Const;
invoke-virtual {v7, v14}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
:try_end_32
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_f0
move-result v14
if-eqz v14, :cond_36
const/4 v8, 0x1
:cond_36
:try_start_36
const-string v14, "value"
const/4 v15, 0x0
new-array v15, v15, [Ljava/lang/Class;
invoke-virtual {v7, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v14
const/4 v15, 0x0
new-array v15, v15, [Ljava/lang/Object;
invoke-virtual {v14, v1, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v13
if-eqz v13, :cond_54
invoke-virtual {v13}, Ljava/lang/String;->length()I
:try_end_4f
.catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_4f} :catch_eb
.catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4f} :catch_f0
move-result v14
if-lez v14, :cond_54
move-object/from16 p1, v13
:goto_54
:cond_54
:try_start_54
const-class v14, Lcom/googlecode/javacpp/annotation/Cast;
invoke-virtual {v7, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v5
check-cast v5, Lcom/googlecode/javacpp/annotation/Cast;
if-eqz v5, :cond_ad
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v14
if-nez v14, :cond_ad
invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v14
const/4 v15, 0x0
aget-object v6, v14, v15
if-eqz p1, :cond_8c
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "< "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p1
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, " >"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
:cond_8c
invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v14
array-length v14, v14
const/4 v15, 0x1
if-le v14, v15, :cond_ad
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v15
const/16 v16, 0x1
aget-object v15, v15, v16
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_ac
.catch Ljava/lang/Exception; {:try_start_54 .. :try_end_ac} :catch_f0
move-result-object v6
:cond_ad
:goto_ad
if-eqz p1, :cond_d8
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v14
if-lez v14, :cond_d8
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
iget-object v15, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "< "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p1
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, " >"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
iput-object v14, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->name:Ljava/lang/String;
:cond_d8
:goto_d8
add-int/lit8 v11, v11, 0x1
goto/16 :goto_8
:cond_dc
invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v14
const-class v15, Lcom/googlecode/javacpp/annotation/Adapter;
invoke-virtual {v14, v15}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v14
check-cast v14, Lcom/googlecode/javacpp/annotation/Adapter;
move-object v2, v14
goto/16 :goto_14
:catch_eb
move-exception v9
const/16 p1, 0x0
goto/16 :goto_54
:catch_f0
move-exception v10
sget-object v14, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
const-string v17, "Could not invoke the value() method on annotation \""
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v16
const-string v17, "\"."
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-virtual {v14, v15, v0, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_ad
:cond_116
instance-of v14, v1, Lcom/googlecode/javacpp/annotation/Const;
if-eqz v14, :cond_11c
const/4 v8, 0x1
goto :goto_d8
:cond_11c
instance-of v14, v1, Lcom/googlecode/javacpp/annotation/Cast;
if-eqz v14, :cond_d8
move-object v5, v1
check-cast v5, Lcom/googlecode/javacpp/annotation/Cast;
invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v14
array-length v14, v14
const/4 v15, 0x1
if-le v14, v15, :cond_d8
invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v14
const/4 v15, 0x1
aget-object v6, v14, v15
goto :goto_d8
:cond_133
if-eqz v3, :cond_139
iput-object v6, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;
iput-boolean v8, v3, Lcom/googlecode/javacpp/Generator$AdapterInformation;->constant:Z
:cond_139
if-eqz p0, :cond_13e
if-eqz v8, :cond_13e
const/4 v3, 0x0
:cond_13e
return-object v3
.end method
.method public static getAnnotatedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
.registers 15
const/4 v12, 0x1
const/4 v11, 0x0
invoke-static {p0, p1}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v8
aget-object v6, v8, v11
aget-object v7, v8, v12
const/4 v3, 0x0
move-object v1, p0
array-length v5, v1
const/4 v4, 0x0
:goto_e
if-ge v4, v5, :cond_2a
aget-object v0, v1, v4
instance-of v9, v0, Lcom/googlecode/javacpp/annotation/Cast;
if-eqz v9, :cond_25
move-object v9, v0
check-cast v9, Lcom/googlecode/javacpp/annotation/Cast;
invoke-interface {v9}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v9
aget-object v9, v9, v11
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
if-gtz v9, :cond_29
:cond_25
instance-of v9, v0, Lcom/googlecode/javacpp/annotation/Const;
if-eqz v9, :cond_3b
:cond_29
const/4 v3, 0x1
:cond_2a
invoke-static {p0}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v2
instance-of v9, v2, Lcom/googlecode/javacpp/annotation/ByVal;
if-eqz v9, :cond_3e
invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
:goto_36
:cond_36
aput-object v6, v8, v11
aput-object v7, v8, v12
return-object v8
:cond_3b
add-int/lit8 v4, v4, 0x1
goto :goto_e
:cond_3e
instance-of v9, v2, Lcom/googlecode/javacpp/annotation/ByRef;
if-eqz v9, :cond_5a
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v8}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "&"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
goto :goto_36
:cond_5a
instance-of v9, v2, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
if-eqz v9, :cond_74
if-nez v3, :cond_74
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "*"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
goto :goto_36
:cond_74
instance-of v9, v2, Lcom/googlecode/javacpp/annotation/ByPtrRef;
if-eqz v9, :cond_36
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "&"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
goto :goto_36
.end method
.method public static varargs getBehavior([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
.registers 10
const/4 v2, 0x0
move-object v1, p0
array-length v4, v1
const/4 v3, 0x0
:goto_4
if-ge v3, v4, :cond_55
aget-object v0, v1, v3
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/Function;
if-nez v5, :cond_24
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/Allocator;
if-nez v5, :cond_24
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ArrayAllocator;
if-nez v5, :cond_24
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ValueSetter;
if-nez v5, :cond_24
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ValueGetter;
if-nez v5, :cond_24
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/MemberGetter;
if-nez v5, :cond_24
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/MemberSetter;
if-eqz v5, :cond_50
:cond_24
if-eqz v2, :cond_53
sget-object v5, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Behavior annotation \""
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\" already found. Ignoring superfluous annotation \""
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\"."
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
:goto_50
:cond_50
add-int/lit8 v3, v3, 0x1
goto :goto_4
:cond_53
move-object v2, v0
goto :goto_50
:cond_55
return-object v2
.end method
.method public static varargs getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
.registers 10
const/4 v2, 0x0
move-object v1, p0
array-length v4, v1
const/4 v3, 0x0
:goto_4
if-ge v3, v4, :cond_4d
aget-object v0, v1, v3
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByPtr;
if-nez v5, :cond_1c
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
if-nez v5, :cond_1c
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByPtrRef;
if-nez v5, :cond_1c
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByRef;
if-nez v5, :cond_1c
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/ByVal;
if-eqz v5, :cond_48
:cond_1c
if-eqz v2, :cond_4b
sget-object v5, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "\"By\" annotation \""
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\" already found. Ignoring superfluous annotation \""
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\"."
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
:cond_48
:goto_48
add-int/lit8 v3, v3, 0x1
goto :goto_4
:cond_4b
move-object v2, v0
goto :goto_48
:cond_4d
return-object v2
.end method
.method public static getCPPScopeName(Lcom/googlecode/javacpp/Generator$MethodInformation;)Ljava/lang/String;
.registers 7
iget-object v3, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
const-class v4, Lcom/googlecode/javacpp/annotation/Namespace;
invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/annotation/Namespace;
if-nez v0, :cond_94
const-string v2, ""
:goto_14
if-eqz v0, :cond_20
invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-eqz v3, :cond_28
:cond_20
const-string v3, "::"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2a
:cond_28
const-string v1, ""
:cond_2a
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_4b
const-string v3, "::"
invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_4b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "::"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_4b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_7d
const-string v3, "::"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_7d
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "::"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_7d
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
const/4 v5, 0x0
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:cond_94
invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;
move-result-object v2
goto/16 :goto_14
.end method
.method public static getCPPScopeName(Ljava/lang/Class;)Ljava/lang/String;
.registers 9
const-string v4, ""
:goto_2
if-eqz p0, :cond_b6
const-class v6, Lcom/googlecode/javacpp/annotation/Namespace;
invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v2
check-cast v2, Lcom/googlecode/javacpp/annotation/Namespace;
if-nez v2, :cond_b7
const-string v5, ""
:goto_10
const-class v6, Lcom/googlecode/javacpp/Pointer;
invoke-virtual {v6, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-eqz v6, :cond_70
const-class v6, Lcom/googlecode/javacpp/Pointer;
if-eq p0, v6, :cond_70
const-class v6, Lcom/googlecode/javacpp/annotation/Name;
invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v1
check-cast v1, Lcom/googlecode/javacpp/annotation/Name;
if-nez v1, :cond_bd
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
const-string v6, "$"
invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_38
const-string v6, "."
invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
:cond_38
add-int/lit8 v6, v0, 0x1
invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
:goto_3e
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_5f
const-string v6, "::"
invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_5f
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "::"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:cond_5f
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:cond_70
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_91
const-string v6, "::"
invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_91
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "::"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:cond_91
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
if-eqz v2, :cond_ae
invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-eqz v6, :cond_b6
:cond_ae
const-string v6, "::"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_c6
:cond_b6
return-object v4
:cond_b7
invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;
move-result-object v5
goto/16 :goto_10
:cond_bd
invoke-interface {v1}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
aget-object v3, v6, v7
goto/16 :goto_3e
:cond_c6
invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;
move-result-object p0
goto/16 :goto_2
.end method
.method public static getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
.registers 24
const-string v12, ""
const-string v18, ""
const-class v19, Ljava/nio/Buffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_14
const-class v19, Lcom/googlecode/javacpp/Pointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_27
:cond_14
const-string v12, "void*"
:cond_16
:goto_16
const/16 v19, 0x2
move/from16 v0, v19
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v19, v0
const/16 v20, 0x0
aput-object v12, v19, v20
const/16 v20, 0x1
aput-object v18, v19, v20
return-object v19
:cond_27
const-class v19, [B
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_3f
const-class v19, Ljava/nio/ByteBuffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_3f
const-class v19, Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_42
:cond_3f
const-string v12, "signed char*"
goto :goto_16
:cond_42
const-class v19, [S
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_5a
const-class v19, Ljava/nio/ShortBuffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_5a
const-class v19, Lcom/googlecode/javacpp/ShortPointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_5d
:cond_5a
const-string v12, "short*"
goto :goto_16
:cond_5d
const-class v19, [I
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_75
const-class v19, Ljava/nio/IntBuffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_75
const-class v19, Lcom/googlecode/javacpp/IntPointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_78
:cond_75
const-string v12, "int*"
goto :goto_16
:cond_78
const-class v19, [J
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_90
const-class v19, Ljava/nio/LongBuffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_90
const-class v19, Lcom/googlecode/javacpp/LongPointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_93
:cond_90
const-string v12, "jlong*"
goto :goto_16
:cond_93
const-class v19, [F
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_ab
const-class v19, Ljava/nio/FloatBuffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_ab
const-class v19, Lcom/googlecode/javacpp/FloatPointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_af
:cond_ab
const-string v12, "float*"
goto/16 :goto_16
:cond_af
const-class v19, [D
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_c7
const-class v19, Ljava/nio/DoubleBuffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_c7
const-class v19, Lcom/googlecode/javacpp/DoublePointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_cb
:cond_c7
const-string v12, "double*"
goto/16 :goto_16
:cond_cb
const-class v19, [C
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_e3
const-class v19, Ljava/nio/CharBuffer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-eq v0, v1, :cond_e3
const-class v19, Lcom/googlecode/javacpp/CharPointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_e7
:cond_e3
const-string v12, "unsigned short*"
goto/16 :goto_16
:cond_e7
const-class v19, [Z
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_f3
const-string v12, "unsigned char*"
goto/16 :goto_16
:cond_f3
const-class v19, Lcom/googlecode/javacpp/PointerPointer;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_ff
const-string v12, "void**"
goto/16 :goto_16
:cond_ff
const-class v19, Ljava/lang/String;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_10b
const-string v12, "const char*"
goto/16 :goto_16
:cond_10b
sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_117
const-string v12, "signed char"
goto/16 :goto_16
:cond_117
sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_123
const-string v12, "jlong"
goto/16 :goto_16
:cond_123
sget-object v19, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_12f
const-string v12, "unsigned short"
goto/16 :goto_16
:cond_12f
sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
move-object/from16 v0, p0
move-object/from16 v1, v19
if-ne v0, v1, :cond_13b
const-string v12, "unsigned char"
goto/16 :goto_16
:cond_13b
invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isPrimitive()Z
move-result v19
if-eqz v19, :cond_147
invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v12
goto/16 :goto_16
:cond_147
const-class v19, Lcom/googlecode/javacpp/FunctionPointer;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v19
if-eqz v19, :cond_34f
const/16 v19, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getFunctionMethod(Ljava/lang/Class;[Z)Ljava/lang/reflect/Method;
move-result-object v5
if-eqz v5, :cond_16
const-class v19, Lcom/googlecode/javacpp/annotation/Convention;
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v4
check-cast v4, Lcom/googlecode/javacpp/annotation/Convention;
if-nez v4, :cond_2a7
const-string v3, ""
:goto_16f
const-class v19, Lcom/googlecode/javacpp/annotation/Namespace;
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v7
check-cast v7, Lcom/googlecode/javacpp/annotation/Namespace;
if-nez v7, :cond_2c0
const-string v17, ""
:goto_17f
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
move-result v19
if-lez v19, :cond_1a8
const-string v19, "::"
move-object/from16 v0, v17
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-nez v19, :cond_1a8
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "::"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
:cond_1a8
invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v14
invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v11
invoke-virtual {v5}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v2
invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
move-result-object v10
invoke-static {v2, v14}, Lcom/googlecode/javacpp/Generator;->getAnnotatedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v15
const/16 v19, 0x0
invoke-static {v15}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
move/from16 v0, v19
move-object/from16 v1, v20
invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v13
if-eqz v13, :cond_2c6
iget-object v0, v13, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v19
if-lez v19, :cond_2c6
iget-object v12, v13, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;
:goto_1d8
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, " ("
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "*"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
const-string v18, ")("
if-eqz v7, :cond_235
const-class v19, Lcom/googlecode/javacpp/Pointer;
const/16 v20, 0x0
aget-object v20, v11, v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v19
if-nez v19, :cond_235
sget-object v19, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v20, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "First parameter of caller method call() or apply() for member function pointer "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, " is not a Pointer. Compilation will most likely fail."
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v19 .. v21}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
:cond_235
if-nez v7, :cond_2e1
const/4 v6, 0x0
:goto_238
array-length v0, v11
move/from16 v19, v0
move/from16 v0, v19
if-ge v6, v0, :cond_313
aget-object v19, v10, v6
aget-object v20, v11, v6
invoke-static/range {v19 .. v20}, Lcom/googlecode/javacpp/Generator;->getAnnotatedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v9
const/16 v19, 0x0
invoke-static {v9}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
aget-object v21, v10, v6
invoke-static/range {v19 .. v21}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v8
if-eqz v8, :cond_2e4
iget-object v0, v8, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v19
if-lez v19, :cond_2e4
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
iget-object v0, v8, Lcom/googlecode/javacpp/Generator$AdapterInformation;->cast:Ljava/lang/String;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, " arg"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
:goto_284
array-length v0, v11
move/from16 v19, v0
add-int/lit8 v19, v19, -0x1
move/from16 v0, v19
if-ge v6, v0, :cond_2a4
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, ", "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
:cond_2a4
add-int/lit8 v6, v6, 0x1
goto :goto_238
:cond_2a7
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v4}, Lcom/googlecode/javacpp/annotation/Convention;->value()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, " "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto/16 :goto_16f
:cond_2c0
invoke-interface {v7}, Lcom/googlecode/javacpp/annotation/Namespace;->value()Ljava/lang/String;
move-result-object v17
goto/16 :goto_17f
:cond_2c6
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const/16 v20, 0x0
aget-object v20, v15, v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const/16 v20, 0x1
aget-object v20, v15, v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
goto/16 :goto_1d8
:cond_2e1
const/4 v6, 0x1
goto/16 :goto_238
:cond_2e4
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const/16 v20, 0x0
aget-object v20, v9, v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, " arg"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v19
const/16 v20, 0x1
aget-object v20, v9, v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
goto/16 :goto_284
:cond_313
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, ")"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
const-class v19, Lcom/googlecode/javacpp/annotation/Const;
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v19
if-eqz v19, :cond_16
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, " const"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
goto/16 :goto_16
:cond_34f
invoke-static/range {p0 .. p0}, Lcom/googlecode/javacpp/Generator;->getCPPScopeName(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I
move-result v19
if-lez v19, :cond_372
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "*"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
goto/16 :goto_16
:cond_372
sget-object v19, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v20, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "The class "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, " does not map to any C++ type. Compilation will most likely fail."
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v19 .. v21}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
goto/16 :goto_16
.end method
.method public static getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;
.registers 10
const/4 v7, 0x0
const/4 v4, 0x0
move-object v1, p0
array-length v3, v1
const/4 v2, 0x0
:goto_5
if-ge v2, v3, :cond_24
aget-object v0, v1, v2
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/Cast;
if-eqz v5, :cond_1c
move-object v5, v0
check-cast v5, Lcom/googlecode/javacpp/annotation/Cast;
invoke-interface {v5}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v5
aget-object v5, v5, v7
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-gtz v5, :cond_20
:cond_1c
instance-of v5, v0, Lcom/googlecode/javacpp/annotation/Const;
if-eqz v5, :cond_4c
:cond_20
invoke-static {p0, p1}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v4
:cond_24
if-eqz v4, :cond_4f
array-length v5, v4
if-lez v5, :cond_4f
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "("
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
aget-object v6, v4, v7
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/4 v6, 0x1
aget-object v6, v4, v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ")"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:goto_4b
return-object v5
:cond_4c
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_4f
const-string v5, ""
goto :goto_4b
.end method
.method public static getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
.registers 16
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v1, 0x0
move-object v2, p0
array-length v5, v2
const/4 v4, 0x0
:goto_6
if-ge v4, v5, :cond_ca
aget-object v0, v2, v4
instance-of v11, v0, Lcom/googlecode/javacpp/annotation/Cast;
if-eqz v11, :cond_4b
if-eqz v9, :cond_47
const/4 v10, 0x1
:goto_11
check-cast v0, Lcom/googlecode/javacpp/annotation/Cast;
invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Cast;->value()[Ljava/lang/String;
move-result-object v11
const/4 v12, 0x0
aget-object v7, v11, v12
const-string v8, ""
const/16 v11, 0x29
invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I
move-result v6
if-lez v6, :cond_35
invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v8
const/4 v11, 0x0
invoke-virtual {v7, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v7
:cond_35
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v11
if-lez v11, :cond_49
const/4 v11, 0x2
new-array v9, v11, [Ljava/lang/String;
const/4 v11, 0x0
aput-object v7, v9, v11
const/4 v11, 0x1
aput-object v8, v9, v11
:cond_44
:goto_44
add-int/lit8 v4, v4, 0x1
goto :goto_6
:cond_47
const/4 v10, 0x0
goto :goto_11
:cond_49
const/4 v9, 0x0
goto :goto_44
:cond_4b
instance-of v11, v0, Lcom/googlecode/javacpp/annotation/Const;
if-eqz v11, :cond_b7
if-eqz v9, :cond_9b
const/4 v10, 0x1
:goto_52
if-nez v10, :cond_44
invoke-static {p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v9
check-cast v0, Lcom/googlecode/javacpp/annotation/Const;
invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Const;->value()Z
move-result v11
if-eqz v11, :cond_9d
const/4 v11, 0x0
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v9}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, " const *"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
aput-object v12, v9, v11
:goto_7a
invoke-static {p0}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v3
instance-of v11, v3, Lcom/googlecode/javacpp/annotation/ByPtrPtr;
if-eqz v11, :cond_44
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const/4 v12, 0x0
aget-object v13, v9, v12
invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string v13, "*"
invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
aput-object v11, v9, v12
goto :goto_44
:cond_9b
const/4 v10, 0x0
goto :goto_52
:cond_9d
const/4 v11, 0x0
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "const "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const/4 v13, 0x0
aget-object v13, v9, v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
aput-object v12, v9, v11
goto :goto_7a
:cond_b7
instance-of v11, v0, Lcom/googlecode/javacpp/annotation/Adapter;
if-nez v11, :cond_c7
invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v11
const-class v12, Lcom/googlecode/javacpp/annotation/Adapter;
invoke-virtual {v11, v12}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v11
if-eqz v11, :cond_44
:cond_c7
const/4 v1, 0x1
goto/16 :goto_44
:cond_ca
if-eqz v10, :cond_d7
if-nez v1, :cond_d7
sget-object v11, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
const-string v13, "Without \"Adapter\", \"Cast\" and \"Const\" annotations are mutually exclusive."
invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
:cond_d7
if-nez v9, :cond_dd
invoke-static {p1}, Lcom/googlecode/javacpp/Generator;->getCPPTypeName(Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v9
:cond_dd
return-object v9
.end method
.method private getFunctionClassName(Ljava/lang/Class;)Ljava/lang/String;
.registers 5
const-class v1, Lcom/googlecode/javacpp/annotation/Name;
invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/annotation/Name;
if-eqz v0, :cond_12
invoke-interface {v0}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
aget-object v1, v1, v2
:goto_11
return-object v1
:cond_12
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "JavaCPP_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/googlecode/javacpp/Generator;->mangle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_11
.end method
.method private static getFunctionMethod(Ljava/lang/Class;[Z)Ljava/lang/reflect/Method;
.registers 10
const-class v7, Lcom/googlecode/javacpp/FunctionPointer;
invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v7
if-nez v7, :cond_a
const/4 v0, 0x0
:cond_9
return-object v0
:cond_a
invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v3
const/4 v0, 0x0
const/4 v1, 0x0
:goto_10
array-length v7, v3
if-ge v1, v7, :cond_9
aget-object v7, v3, v1
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
aget-object v7, v3, v1
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v4
aget-object v7, v3, v1
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v5
aget-object v7, v3, v1
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v6
invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v7
if-eqz v7, :cond_34
:goto_31
:cond_31
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_34
if-eqz p1, :cond_4f
const-string v7, "allocate"
invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_4f
invoke-static {v4}, Ljava/lang/reflect/Modifier;->isNative(I)Z
move-result v7
if-eqz v7, :cond_4f
sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne v6, v7, :cond_4f
array-length v7, v5
if-nez v7, :cond_4f
const/4 v7, 0x1
aput-boolean v7, p1, v1
goto :goto_31
:cond_4f
const-string v7, "call"
invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_5f
const-string v7, "apply"
invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_31
:cond_5f
aget-object v0, v3, v1
goto :goto_31
.end method
.method public static getJNITypeName(Ljava/lang/Class;)Ljava/lang/String;
.registers 2
sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_7
const-string v0, "jbyte"
:goto_6
return-object v0
:cond_7
sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_e
const-string v0, "jshort"
goto :goto_6
:cond_e
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_15
const-string v0, "jint"
goto :goto_6
:cond_15
sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_1c
const-string v0, "jlong"
goto :goto_6
:cond_1c
sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_23
const-string v0, "jfloat"
goto :goto_6
:cond_23
sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_2a
const-string v0, "jdouble"
goto :goto_6
:cond_2a
sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_31
const-string v0, "jchar"
goto :goto_6
:cond_31
sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_38
const-string v0, "jboolean"
goto :goto_6
:cond_38
const-class v0, [B
if-ne p0, v0, :cond_3f
const-string v0, "jbyteArray"
goto :goto_6
:cond_3f
const-class v0, [S
if-ne p0, v0, :cond_46
const-string v0, "jshortArray"
goto :goto_6
:cond_46
const-class v0, [I
if-ne p0, v0, :cond_4d
const-string v0, "jintArray"
goto :goto_6
:cond_4d
const-class v0, [J
if-ne p0, v0, :cond_54
const-string v0, "jlongArray"
goto :goto_6
:cond_54
const-class v0, [F
if-ne p0, v0, :cond_5b
const-string v0, "jfloatArray"
goto :goto_6
:cond_5b
const-class v0, [D
if-ne p0, v0, :cond_62
const-string v0, "jdoubleArray"
goto :goto_6
:cond_62
const-class v0, [C
if-ne p0, v0, :cond_69
const-string v0, "jcharArray"
goto :goto_6
:cond_69
const-class v0, [Z
if-ne p0, v0, :cond_70
const-string v0, "jbooleanArray"
goto :goto_6
:cond_70
invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z
move-result v0
if-eqz v0, :cond_79
const-string v0, "jobjectArray"
goto :goto_6
:cond_79
const-class v0, Ljava/lang/String;
if-ne p0, v0, :cond_80
const-string v0, "jstring"
goto :goto_6
:cond_80
const-class v0, Ljava/lang/Class;
if-ne p0, v0, :cond_87
const-string v0, "jclass"
goto :goto_6
:cond_87
sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_8f
const-string v0, "void"
goto/16 :goto_6
:cond_8f
const-string v0, "jobject"
goto/16 :goto_6
.end method
.method public static getMethodInformation(Ljava/lang/reflect/Method;)Lcom/googlecode/javacpp/Generator$MethodInformation;
.registers 35
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v30
invoke-static/range {v30 .. v30}, Ljava/lang/reflect/Modifier;->isNative(I)Z
move-result v30
if-nez v30, :cond_c
const/4 v12, 0x0
:cond_b
:goto_b
return-object v12
:cond_c
new-instance v12, Lcom/googlecode/javacpp/Generator$MethodInformation;
invoke-direct {v12}, Lcom/googlecode/javacpp/Generator$MethodInformation;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v30
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v0, p0
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->method:Ljava/lang/reflect/Method;
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v30
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v30
move/from16 v0, v30
iput v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v30
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v30
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
const-class v30, Lcom/googlecode/javacpp/annotation/Name;
move-object/from16 v0, p0
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v20
check-cast v20, Lcom/googlecode/javacpp/annotation/Name;
if-eqz v20, :cond_105
invoke-interface/range {v20 .. v20}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;
move-result-object v30
:goto_4f
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
const-class v30, Lcom/googlecode/javacpp/annotation/Index;
move-object/from16 v0, p0
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v11
check-cast v11, Lcom/googlecode/javacpp/annotation/Index;
if-eqz v11, :cond_117
invoke-interface {v11}, Lcom/googlecode/javacpp/annotation/Index;->value()I
move-result v30
:goto_65
move/from16 v0, v30
iput v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v30
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
move-result-object v30
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
const-class v30, Lcom/googlecode/javacpp/annotation/Raw;
move-object/from16 v0, p0
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v30
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnRaw:Z
move/from16 v30, v0
if-eqz v30, :cond_11b
const-class v30, Lcom/googlecode/javacpp/annotation/Raw;
move-object/from16 v0, p0
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v30
check-cast v30, Lcom/googlecode/javacpp/annotation/Raw;
invoke-interface/range {v30 .. v30}, Lcom/googlecode/javacpp/annotation/Raw;->withEnv()Z
move-result v30
:goto_9d
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
move/from16 v0, v30
new-array v0, v0, [Z
move-object/from16 v30, v0
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z
const/4 v10, 0x0
:goto_b5
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
move/from16 v0, v30
if-ge v10, v0, :cond_121
const/4 v13, 0x0
:goto_c3
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
move-object/from16 v30, v0
aget-object v30, v30, v10
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
move/from16 v0, v30
if-ge v13, v0, :cond_11e
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
move-object/from16 v30, v0
aget-object v30, v30, v10
aget-object v30, v30, v13
move-object/from16 v0, v30
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/Raw;
move/from16 v30, v0
if-eqz v30, :cond_102
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterRaw:[Z
move-object/from16 v30, v0
const/16 v31, 0x1
aput-boolean v31, v30, v10
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z
move/from16 v31, v0
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
move-object/from16 v30, v0
aget-object v30, v30, v10
aget-object v30, v30, v13
check-cast v30, Lcom/googlecode/javacpp/annotation/Raw;
invoke-interface/range {v30 .. v30}, Lcom/googlecode/javacpp/annotation/Raw;->withEnv()Z
move-result v30
or-int v30, v30, v31
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->withEnv:Z
:cond_102
add-int/lit8 v13, v13, 0x1
goto :goto_c3
:cond_105
const/16 v30, 0x1
move/from16 v0, v30
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v30, v0
const/16 v31, 0x0
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v32, v0
aput-object v32, v30, v31
goto/16 :goto_4f
:cond_117
const/16 v30, 0x0
goto/16 :goto_65
:cond_11b
const/16 v30, 0x0
goto :goto_9d
:cond_11e
add-int/lit8 v10, v10, 0x1
goto :goto_b5
:cond_121
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
sget-object v31, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_158
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
if-lez v30, :cond_20b
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->isArray()Z
move-result v30
if-eqz v30, :cond_20b
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->isPrimitive()Z
move-result v30
if-eqz v30, :cond_20b
:cond_158
const/4 v5, 0x1
:goto_159
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
sget-object v31, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-eq v0, v1, :cond_173
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v31, v0
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_20e
:cond_173
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
if-lez v30, :cond_20e
const/4 v6, 0x1
:goto_17f
iget v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v30, v0
invoke-static/range {v30 .. v30}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v30
if-nez v30, :cond_211
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
sget-object v31, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_211
const/4 v3, 0x1
:goto_196
if-eqz v3, :cond_213
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
const/16 v31, 0x1
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_213
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-eq v0, v1, :cond_1c9
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
sget-object v31, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_213
:cond_1c9
const/4 v4, 0x1
:goto_1ca
const/16 v28, 0x0
const/16 v29, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v21, 0x0
const/16 v22, 0x0
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v30, v0
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v18
const/4 v10, 0x0
:goto_1dd
move-object/from16 v0, v18
array-length v0, v0
move/from16 v30, v0
move/from16 v0, v30
if-ge v10, v0, :cond_39a
aget-object v16, v18, v10
invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v19
invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v26
invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v25
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
move-result v30
if-nez v30, :cond_208
invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isNative(I)Z
move-result v30
if-nez v30, :cond_215
:cond_208
:goto_208
add-int/lit8 v10, v10, 0x1
goto :goto_1dd
:cond_20b
const/4 v5, 0x0
goto/16 :goto_159
:cond_20e
const/4 v6, 0x0
goto/16 :goto_17f
:cond_211
const/4 v3, 0x0
goto :goto_196
:cond_213
const/4 v4, 0x0
goto :goto_1ca
:cond_215
const/4 v7, 0x0
const/4 v8, 0x0
if-eqz v5, :cond_25e
const-string v30, "get"
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_25e
const-string v30, "put"
move-object/from16 v0, v30
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_25e
const/4 v7, 0x1
:goto_232
const/16 v27, 0x1
const/4 v13, 0x0
:goto_235
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
move/from16 v0, v30
if-ge v13, v0, :cond_28f
move-object/from16 v0, v25
array-length v0, v0
move/from16 v30, v0
move/from16 v0, v30
if-ge v13, v0, :cond_28f
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
aget-object v30, v30, v13
aget-object v31, v25, v13
move-object/from16 v0, v30
move-object/from16 v1, v31
if-eq v0, v1, :cond_25b
const/16 v27, 0x0
:cond_25b
add-int/lit8 v13, v13, 0x1
goto :goto_235
:cond_25e
if-eqz v6, :cond_27a
const-string v30, "put"
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_27a
const-string v30, "get"
move-object/from16 v0, v30
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_27a
const/4 v8, 0x1
goto :goto_232
:cond_27a
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v30, v0
move-object/from16 v0, v17
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_208
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->overloaded:Z
goto :goto_232
:cond_28f
if-eqz v27, :cond_208
if-eqz v7, :cond_33e
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
if-lez v30, :cond_33e
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->isArray()Z
move-result v30
if-eqz v30, :cond_33e
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->isPrimitive()Z
move-result v30
if-eqz v30, :cond_33e
const/16 v23, 0x1
:goto_2c0
if-eqz v8, :cond_341
move-object/from16 v0, v25
array-length v0, v0
move/from16 v30, v0
if-lez v30, :cond_341
const/16 v30, 0x0
aget-object v30, v25, v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->isArray()Z
move-result v30
if-eqz v30, :cond_341
const/16 v30, 0x0
aget-object v30, v25, v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->isPrimitive()Z
move-result v30
if-eqz v30, :cond_341
const/16 v24, 0x1
:goto_2e3
if-eqz v5, :cond_34e
move-object/from16 v0, v25
array-length v0, v0
move/from16 v31, v0
if-eqz v23, :cond_344
const/16 v30, 0x0
:goto_2ee
sub-int v30, v31, v30
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v31, v0
move-object/from16 v0, v31
array-length v0, v0
move/from16 v31, v0
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_34e
if-eqz v23, :cond_347
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v31, v0
move-object/from16 v0, v31
array-length v0, v0
move/from16 v31, v0
add-int/lit8 v31, v31, -0x1
aget-object v30, v30, v31
:goto_312
move-object/from16 v0, v25
array-length v0, v0
move/from16 v31, v0
add-int/lit8 v31, v31, -0x1
aget-object v31, v25, v31
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_34e
sget-object v30, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v26
move-object/from16 v1, v30
if-eq v0, v1, :cond_333
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v26
move-object/from16 v1, v30
if-ne v0, v1, :cond_34e
:cond_333
move-object/from16 v22, v16
move/from16 v28, v7
if-nez v7, :cond_34c
const/4 v14, 0x1
:goto_33a
move/from16 v21, v23
goto/16 :goto_208
:cond_33e
const/16 v23, 0x0
goto :goto_2c0
:cond_341
const/16 v24, 0x0
goto :goto_2e3
:cond_344
const/16 v30, 0x1
goto :goto_2ee
:cond_347
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
goto :goto_312
:cond_34c
const/4 v14, 0x0
goto :goto_33a
:cond_34e
if-eqz v6, :cond_208
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v31, v0
if-eqz v24, :cond_395
const/16 v30, 0x0
:goto_35d
sub-int v30, v31, v30
move-object/from16 v0, v25
array-length v0, v0
move/from16 v31, v0
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_208
if-eqz v24, :cond_375
move-object/from16 v0, v25
array-length v0, v0
move/from16 v30, v0
add-int/lit8 v30, v30, -0x1
aget-object v26, v25, v30
:cond_375
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v31, v0
move-object/from16 v0, v31
array-length v0, v0
move/from16 v31, v0
add-int/lit8 v31, v31, -0x1
aget-object v30, v30, v31
move-object/from16 v0, v26
move-object/from16 v1, v30
if-ne v0, v1, :cond_208
move-object/from16 v22, v16
move/from16 v29, v8
if-nez v8, :cond_398
const/4 v15, 0x1
:goto_393
goto/16 :goto_208
:cond_395
const/16 v30, 0x1
goto :goto_35d
:cond_398
const/4 v15, 0x0
goto :goto_393
:cond_39a
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
move-object/from16 v30, v0
invoke-static/range {v30 .. v30}, Lcom/googlecode/javacpp/Generator;->getBehavior([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v2
if-eqz v5, :cond_4c1
instance-of v0, v2, Lcom/googlecode/javacpp/annotation/ValueGetter;
move/from16 v30, v0
if-eqz v30, :cond_4c1
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
move/from16 v0, v21
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z
:goto_3b4
:cond_3b4
if-nez v20, :cond_3d2
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
move-object/from16 v30, v0
if-eqz v30, :cond_3d2
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
move-object/from16 v30, v0
const-class v31, Lcom/googlecode/javacpp/annotation/Name;
invoke-virtual/range {v30 .. v31}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v20
check-cast v20, Lcom/googlecode/javacpp/annotation/Name;
if-eqz v20, :cond_3d2
invoke-interface/range {v20 .. v20}, Lcom/googlecode/javacpp/annotation/Name;->value()[Ljava/lang/String;
move-result-object v30
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberName:[Ljava/lang/String;
:cond_3d2
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v30, v0
const-class v31, Lcom/googlecode/javacpp/annotation/NoOffset;
invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v30
if-nez v30, :cond_3f6
const-class v30, Lcom/googlecode/javacpp/annotation/NoOffset;
move-object/from16 v0, p0
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v30
if-nez v30, :cond_3f6
const-class v30, Lcom/googlecode/javacpp/annotation/Index;
move-object/from16 v0, p0
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v30
if-eqz v30, :cond_64e
:cond_3f6
const/16 v30, 0x1
:goto_3f8
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z
move/from16 v30, v0
if-nez v30, :cond_426
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
move-object/from16 v30, v0
if-eqz v30, :cond_426
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
move-object/from16 v30, v0
const-class v31, Lcom/googlecode/javacpp/annotation/NoOffset;
invoke-virtual/range {v30 .. v31}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v30
if-nez v30, :cond_420
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
move-object/from16 v30, v0
const-class v31, Lcom/googlecode/javacpp/annotation/Index;
invoke-virtual/range {v30 .. v31}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v30
if-eqz v30, :cond_652
:cond_420
const/16 v30, 0x1
:goto_422
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noOffset:Z
:cond_426
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
if-eqz v30, :cond_43f
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->isArray()Z
move-result v30
if-nez v30, :cond_458
:cond_43f
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
move/from16 v30, v0
if-nez v30, :cond_44b
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
move/from16 v30, v0
if-eqz v30, :cond_656
:cond_44b
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
move/from16 v0, v30
iput v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I
:goto_458
:cond_458
const/16 v30, 0x0
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->cls:Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
move-object/from16 v1, p0
invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
move-result v30
if-nez v30, :cond_b
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->annotations:[Ljava/lang/annotation/Annotation;
move-object/from16 v30, v0
invoke-static/range {v30 .. v30}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v30
move-object/from16 v0, v30
instance-of v0, v0, Lcom/googlecode/javacpp/annotation/ByVal;
move/from16 v30, v0
if-eqz v30, :cond_48a
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
move-object/from16 v1, p0
invoke-static {v0, v1}, Lcom/googlecode/javacpp/Generator;->getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
move-result v30
if-eqz v30, :cond_4ae
:cond_48a
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z
move/from16 v30, v0
if-nez v30, :cond_b
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
move/from16 v30, v0
if-nez v30, :cond_b
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
move/from16 v30, v0
if-nez v30, :cond_b
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
move/from16 v30, v0
if-nez v30, :cond_b
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
move/from16 v30, v0
if-nez v30, :cond_b
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z
move/from16 v30, v0
if-nez v30, :cond_b
:cond_4ae
invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;
move-result-object v9
array-length v0, v9
move/from16 v30, v0
if-lez v30, :cond_673
const/16 v30, 0x0
aget-object v30, v9, v30
:goto_4bb
move-object/from16 v0, v30
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->throwsException:Ljava/lang/Class;
goto/16 :goto_b
:cond_4c1
if-eqz v6, :cond_4d1
instance-of v0, v2, Lcom/googlecode/javacpp/annotation/ValueSetter;
move/from16 v30, v0
if-eqz v30, :cond_4d1
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
goto/16 :goto_3b4
:cond_4d1
if-eqz v5, :cond_4e5
instance-of v0, v2, Lcom/googlecode/javacpp/annotation/MemberGetter;
move/from16 v30, v0
if-eqz v30, :cond_4e5
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
move/from16 v0, v21
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z
goto/16 :goto_3b4
:cond_4e5
if-eqz v6, :cond_4f5
instance-of v0, v2, Lcom/googlecode/javacpp/annotation/MemberSetter;
move/from16 v30, v0
if-eqz v30, :cond_4f5
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
goto/16 :goto_3b4
:cond_4f5
if-eqz v3, :cond_505
instance-of v0, v2, Lcom/googlecode/javacpp/annotation/Allocator;
move/from16 v30, v0
if-eqz v30, :cond_505
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
goto/16 :goto_3b4
:cond_505
if-eqz v4, :cond_519
instance-of v0, v2, Lcom/googlecode/javacpp/annotation/ArrayAllocator;
move/from16 v30, v0
if-eqz v30, :cond_519
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
goto/16 :goto_3b4
:cond_519
if-nez v2, :cond_61b
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
sget-object v31, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_576
const-string v30, "deallocate"
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_576
iget v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v30, v0
invoke-static/range {v30 .. v30}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v30
if-nez v30, :cond_576
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
const/16 v31, 0x2
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_576
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x0
aget-object v30, v30, v31
sget-object v31, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_576
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
const/16 v31, 0x1
aget-object v30, v30, v31
sget-object v31, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
move-object/from16 v0, v30
move-object/from16 v1, v31
if-ne v0, v1, :cond_576
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->deallocator:Z
goto/16 :goto_3b4
:cond_576
if-eqz v3, :cond_58c
const-string v30, "allocate"
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_58c
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
goto/16 :goto_3b4
:cond_58c
if-eqz v4, :cond_5a6
const-string v30, "allocateArray"
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_5a6
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->arrayAllocator:Z
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->allocator:Z
goto/16 :goto_3b4
:cond_5a6
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->returnType:Ljava/lang/Class;
move-object/from16 v30, v0
const-class v31, Ljava/nio/ByteBuffer;
invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v30
if-eqz v30, :cond_5db
const-string v30, "asDirectBuffer"
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->name:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_5db
iget v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->modifiers:I
move/from16 v30, v0
invoke-static/range {v30 .. v30}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v30
if-nez v30, :cond_5db
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
if-nez v30, :cond_5db
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->bufferGetter:Z
goto/16 :goto_3b4
:cond_5db
if-eqz v28, :cond_5ed
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueGetter:Z
move/from16 v0, v21
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z
move-object/from16 v0, v22
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
goto/16 :goto_3b4
:cond_5ed
if-eqz v29, :cond_5fb
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
move-object/from16 v0, v22
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
goto/16 :goto_3b4
:cond_5fb
if-eqz v14, :cond_60d
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberGetter:Z
move/from16 v0, v21
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->noReturnGetter:Z
move-object/from16 v0, v22
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
goto/16 :goto_3b4
:cond_60d
if-eqz v15, :cond_3b4
const/16 v30, 0x1
move/from16 v0, v30
iput-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
move-object/from16 v0, v22
iput-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
goto/16 :goto_3b4
:cond_61b
sget-object v30, Lcom/googlecode/javacpp/Generator;->logger:Ljava/util/logging/Logger;
sget-object v31, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
new-instance v32, Ljava/lang/StringBuilder;
invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V
const-string v33, "Method \""
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v32
const-string v33, "\" cannot behave like a \""
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v32
const-string v33, "\". No code will be generated."
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v32
invoke-virtual/range {v30 .. v32}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
const/4 v12, 0x0
goto/16 :goto_b
:cond_64e
const/16 v30, 0x0
goto/16 :goto_3f8
:cond_652
const/16 v30, 0x0
goto/16 :goto_422
:cond_656
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
move/from16 v30, v0
if-nez v30, :cond_662
iget-boolean v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
move/from16 v30, v0
if-eqz v30, :cond_458
:cond_662
iget-object v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
move-object/from16 v30, v0
move-object/from16 v0, v30
array-length v0, v0
move/from16 v30, v0
add-int/lit8 v30, v30, -0x1
move/from16 v0, v30
iput v0, v12, Lcom/googlecode/javacpp/Generator$MethodInformation;->dim:I
goto/16 :goto_458
:cond_673
const-class v30, Ljava/lang/RuntimeException;
goto/16 :goto_4bb
.end method
.method public static getNoException(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
.registers 4
sget-object v1, Lcom/googlecode/javacpp/Generator;->baseClasses:Ljava/util/List;
invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_10
const-class v1, Lcom/googlecode/javacpp/annotation/NoException;
invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_1e
:cond_10
const/4 v0, 0x1
:goto_11
if-nez v0, :cond_1d
if-eqz p0, :cond_1d
const-class v1, Lcom/googlecode/javacpp/annotation/NoException;
invoke-virtual {p0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_20
:cond_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_11
:cond_20
invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;
move-result-object p0
goto :goto_11
.end method
.method public static getParameterAdapterInformation(ZLcom/googlecode/javacpp/Generator$MethodInformation;I)Lcom/googlecode/javacpp/Generator$AdapterInformation;
.registers 10
const/4 v6, 0x1
const/4 v5, 0x0
if-eqz p0, :cond_16
iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v3, v3, p2
const-class v4, Ljava/lang/String;
if-eq v3, v4, :cond_14
iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v3, :cond_14
iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v3, :cond_16
:cond_14
const/4 v0, 0x0
:cond_15
:goto_15
return-object v0
:cond_16
invoke-static {p1, p2}, Lcom/googlecode/javacpp/Generator;->getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_36
const-string v3, "("
invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_36
const-string v3, ")"
invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_36
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:cond_36
if-eqz v1, :cond_3e
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_4c
:cond_3e
iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
aget-object v3, v3, p2
iget-object v4, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v4, v4, p2
invoke-static {v3, v4}, Lcom/googlecode/javacpp/Generator;->getCastedCPPTypeName([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)[Ljava/lang/String;
move-result-object v3
aget-object v1, v3, v5
:cond_4c
new-array v3, v6, [Ljava/lang/String;
aput-object v1, v3, v5
invoke-static {v3}, Lcom/googlecode/javacpp/Generator;->getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
aget-object v3, v3, p2
invoke-static {p0, v2, v3}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v0
if-nez v0, :cond_15
iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
if-eqz v3, :cond_15
iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v3, :cond_6a
iget-boolean v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v3, :cond_15
:cond_6a
iget-object v3, p1, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
invoke-virtual {v3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v3
invoke-static {p0, v2, v3}, Lcom/googlecode/javacpp/Generator;->getAdapterInformation(ZLjava/lang/String;[Ljava/lang/annotation/Annotation;)Lcom/googlecode/javacpp/Generator$AdapterInformation;
move-result-object v0
goto :goto_15
.end method
.method public static getParameterBy(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/annotation/Annotation;
.registers 4
iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
aget-object v1, v1, p1
invoke-static {v1}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v0
if-nez v0, :cond_20
iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
if-eqz v1, :cond_20
iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v1, :cond_16
iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v1, :cond_20
:cond_16
iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-static {v1}, Lcom/googlecode/javacpp/Generator;->getBy([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
move-result-object v0
:cond_20
return-object v0
.end method
.method public static getParameterCast(Lcom/googlecode/javacpp/Generator$MethodInformation;I)Ljava/lang/String;
.registers 5
iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;
aget-object v1, v1, p1
iget-object v2, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
aget-object v2, v2, p1
invoke-static {v1, v2}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_37
:cond_14
iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->parameterTypes:[Ljava/lang/Class;
array-length v1, v1
add-int/lit8 v1, v1, -0x1
if-ne p1, v1, :cond_37
iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->valueSetter:Z
if-nez v1, :cond_23
iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->memberSetter:Z
if-eqz v1, :cond_37
:cond_23
iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
iget-object v2, p0, Lcom/googlecode/javacpp/Generator$MethodInformation;->pairedMethod:Ljava/lang/reflect/Method;
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v2
invoke-static {v1, v2}, Lcom/googlecode/javacpp/Generator;->getCast([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
:cond_37
return-object v0
.end method
.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
.registers 5
sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_7
const-string v0, "B"
:goto_6
return-object v0
:cond_7
sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_e
const-string v0, "S"
goto :goto_6
:cond_e
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_15
const-string v0, "I"
goto :goto_6
:cond_15
sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_1c
const-string v0, "J"
goto :goto_6
:cond_1c
sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_23
const-string v0, "F"
goto :goto_6
:cond_23
sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_2a
const-string v0, "D"
goto :goto_6
:cond_2a
sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_31
const-string v0, "Z"
goto :goto_6
:cond_31
sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_38
const-string v0, "C"
goto :goto_6
:cond_38
sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne p0, v0, :cond_3f
const-string v0, "V"
goto :goto_6
:cond_3f
invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z
move-result v0
if-eqz v0, :cond_52
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "."
const-string v2, "/"
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
goto :goto_6
:cond_52
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "L"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-string v2, "."
const-string v3, "/"
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public static varargs getSignature([Ljava/lang/Class;)Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
array-length v2, p0
mul-int/lit8 v2, v2, 0x2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v0, 0x0
:goto_9
array-length v2, p0
if-ge v0, v2, :cond_18
aget-object v2, p0, v0
invoke-static {v2}, Lcom/googlecode/javacpp/Generator;->getSignature(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_18
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public static varargs getValueTypeName([Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v2, 0x0
aget-object v0, p0, v2
const-string v1, "const "
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
const/4 v1, 0x6
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_16
:goto_16
return-object v0
:cond_17
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_16
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method
.method public static mangle(Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v2, 0x0
:goto_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v2, v4, :cond_82
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v4, 0x30
if-lt v0, v4, :cond_1c
const/16 v4, 0x39
if-le v0, v4, :cond_2c
:cond_1c
const/16 v4, 0x41
if-lt v0, v4, :cond_24
const/16 v4, 0x5a
if-le v0, v4, :cond_2c
:cond_24
const/16 v4, 0x61
if-lt v0, v4, :cond_32
const/16 v4, 0x7a
if-gt v0, v4, :cond_32
:cond_2c
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_2f
add-int/lit8 v2, v2, 0x1
goto :goto_a
:cond_32
const/16 v4, 0x5f
if-ne v0, v4, :cond_3c
const-string v4, "_1"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2f
:cond_3c
const/16 v4, 0x3b
if-ne v0, v4, :cond_46
const-string v4, "_2"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2f
:cond_46
const/16 v4, 0x5b
if-ne v0, v4, :cond_50
const-string v4, "_3"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2f
:cond_50
const/16 v4, 0x2e
if-eq v0, v4, :cond_58
const/16 v4, 0x2f
if-ne v0, v4, :cond_5e
:cond_58
const-string v4, "_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2f
:cond_5e
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
const-string v4, "_0"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
packed-switch v4, :pswitch_data_88
:goto_6e
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2f
:pswitch_72
const-string v4, "0"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:pswitch_77
const-string v4, "0"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:pswitch_7c
const-string v4, "0"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_6e
:cond_82
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
nop
:pswitch_data_88
.packed-switch 0x1
:pswitch_72
:pswitch_77
:pswitch_7c
.end packed-switch
.end method
.method public checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z
.registers 15
const/4 v12, 0x2
const/4 v9, 0x0
const/4 v8, 0x1
if-nez p1, :cond_6
:goto_5
:cond_5
return v8
:cond_6
iget-object v10, p0, Lcom/googlecode/javacpp/Generator;->properties:Lcom/googlecode/javacpp/Loader$ClassProperties;
const-string v11, "platform.name"
invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
new-array v5, v12, [[Ljava/lang/String;
invoke-interface {p1}, Lcom/googlecode/javacpp/annotation/Platform;->value()[Ljava/lang/String;
move-result-object v10
aput-object v10, v5, v9
invoke-interface {p1}, Lcom/googlecode/javacpp/annotation/Platform;->not()[Ljava/lang/String;
move-result-object v10
aput-object v10, v5, v8
new-array v4, v12, [Z
fill-array-data v4, :array_50
const/4 v1, 0x0
:goto_22
array-length v10, v5
if-ge v1, v10, :cond_3b
aget-object v0, v5, v1
array-length v3, v0
const/4 v2, 0x0
:goto_29
if-ge v2, v3, :cond_35
aget-object v7, v0, v2
invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_38
aput-boolean v8, v4, v1
:cond_35
add-int/lit8 v1, v1, 0x1
goto :goto_22
:cond_38
add-int/lit8 v2, v2, 0x1
goto :goto_29
:cond_3b
aget-object v10, v5, v9
array-length v10, v10
if-eqz v10, :cond_44
aget-boolean v10, v4, v9
if-eqz v10, :cond_4d
:cond_44
aget-object v10, v5, v8
array-length v10, v10
if-eqz v10, :cond_5
aget-boolean v10, v4, v8
if-eqz v10, :cond_5
:cond_4d
move v8, v9
goto :goto_5
nop
:array_50
.array-data 0x1
0x0t
0x0t
.end array-data
.end method
.method public checkPlatform(Ljava/lang/Class;)Z
.registers 12
const/4 v9, 0x1
const-class v8, Lcom/googlecode/javacpp/annotation/Properties;
invoke-virtual {p1, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v2
check-cast v2, Lcom/googlecode/javacpp/annotation/Properties;
if-eqz v2, :cond_3b
invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Properties;->inherit()[Ljava/lang/Class;
move-result-object v3
if-eqz v3, :cond_23
move-object v0, v3
array-length v5, v0
const/4 v4, 0x0
:goto_14
if-ge v4, v5, :cond_23
aget-object v1, v0, v4
invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Ljava/lang/Class;)Z
move-result v8
if-eqz v8, :cond_20
move v8, v9
:goto_1f
return v8
:cond_20
add-int/lit8 v4, v4, 0x1
goto :goto_14
:cond_23
invoke-interface {v2}, Lcom/googlecode/javacpp/annotation/Properties;->value()[Lcom/googlecode/javacpp/annotation/Platform;
move-result-object v7
if-eqz v7, :cond_4b
move-object v0, v7
array-length v5, v0
const/4 v4, 0x0
:goto_2c
if-ge v4, v5, :cond_4b
aget-object v6, v0, v4
invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z
move-result v8
if-eqz v8, :cond_38
move v8, v9
goto :goto_1f
:cond_38
add-int/lit8 v4, v4, 0x1
goto :goto_2c
:cond_3b
const-class v8, Lcom/googlecode/javacpp/annotation/Platform;
invoke-virtual {p1, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v8
check-cast v8, Lcom/googlecode/javacpp/annotation/Platform;
invoke-virtual {p0, v8}, Lcom/googlecode/javacpp/Generator;->checkPlatform(Lcom/googlecode/javacpp/annotation/Platform;)Z
move-result v8
if-eqz v8, :cond_4b
move v8, v9
goto :goto_1f
:cond_4b
const/4 v8, 0x0
goto :goto_1f
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
:cond_9
iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
:cond_12
return-void
.end method
.method public varargs generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
.registers 9
const/4 v3, 0x1
const/4 v0, 0x0
new-instance v1, Ljava/io/PrintWriter;
new-instance v2, Lcom/googlecode/javacpp/Generator$1;
invoke-direct {v2, p0}, Lcom/googlecode/javacpp/Generator$1;-><init>(Lcom/googlecode/javacpp/Generator;)V
invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
const/4 v1, 0x0
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;
invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->functionDefinitions:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;
invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->functionPointers:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;
invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->deallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;
invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->arrayDeallocators:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;
invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->jclasses:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
new-instance v1, Lcom/googlecode/javacpp/Generator$LinkedListRegister;
invoke-direct {v1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->jclassesInit:Lcom/googlecode/javacpp/Generator$LinkedListRegister;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Generator;->members:Ljava/util/HashMap;
iput-boolean v0, p0, Lcom/googlecode/javacpp/Generator;->mayThrowExceptions:Z
iput-boolean v0, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z
invoke-direct {p0, v3, v3, p3, p4}, Lcom/googlecode/javacpp/Generator;->doClasses(ZZLjava/lang/String;[Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_64
new-instance v0, Ljava/io/PrintWriter;
invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/googlecode/javacpp/Generator;->out:Ljava/io/PrintWriter;
if-eqz p2, :cond_5c
new-instance v0, Ljava/io/PrintWriter;
invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/googlecode/javacpp/Generator;->out2:Ljava/io/PrintWriter;
:cond_5c
iget-boolean v0, p0, Lcom/googlecode/javacpp/Generator;->mayThrowExceptions:Z
iget-boolean v1, p0, Lcom/googlecode/javacpp/Generator;->usesAdapters:Z
invoke-direct {p0, v0, v1, p3, p4}, Lcom/googlecode/javacpp/Generator;->doClasses(ZZLjava/lang/String;[Ljava/lang/Class;)Z
move-result v0
:cond_64
return v0
.end method