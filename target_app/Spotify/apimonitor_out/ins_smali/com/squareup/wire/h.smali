.class public final Lcom/squareup/wire/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:I
.field final b:Ljava/lang/String;
.field final c:Lcom/squareup/wire/Message$Datatype;
.field final d:Lcom/squareup/wire/Message$Label;
.field final e:Ljava/lang/Class;
.field final f:Ljava/lang/Class;
.field final g:Z
.field  h:Lcom/squareup/wire/MessageAdapter;
.field  i:Lcom/squareup/wire/b;
.field private final j:Ljava/lang/reflect/Field;
.field private final k:Ljava/lang/reflect/Field;
.method private constructor <init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
.registers 11
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/squareup/wire/h;->a:I
iput-object p2, p0, Lcom/squareup/wire/h;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/squareup/wire/h;->c:Lcom/squareup/wire/Message$Datatype;
iput-object p4, p0, Lcom/squareup/wire/h;->d:Lcom/squareup/wire/Message$Label;
iput-boolean p5, p0, Lcom/squareup/wire/h;->g:Z
sget-object v0, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
if-ne p3, v0, :cond_1b
iput-object p6, p0, Lcom/squareup/wire/h;->e:Ljava/lang/Class;
iput-object v1, p0, Lcom/squareup/wire/h;->f:Ljava/lang/Class;
:goto_16
iput-object p7, p0, Lcom/squareup/wire/h;->j:Ljava/lang/reflect/Field;
iput-object p8, p0, Lcom/squareup/wire/h;->k:Ljava/lang/reflect/Field;
return-void
:cond_1b
sget-object v0, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;
if-ne p3, v0, :cond_24
iput-object p6, p0, Lcom/squareup/wire/h;->f:Ljava/lang/Class;
iput-object v1, p0, Lcom/squareup/wire/h;->e:Ljava/lang/Class;
goto :goto_16
:cond_24
iput-object v1, p0, Lcom/squareup/wire/h;->e:Ljava/lang/Class;
iput-object v1, p0, Lcom/squareup/wire/h;->f:Ljava/lang/Class;
goto :goto_16
.end method
.method synthetic constructor <init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;B)V
.registers 10
invoke-direct/range {p0 .. p8}, Lcom/squareup/wire/h;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
return-void
.end method
.method static synthetic a(Lcom/squareup/wire/h;)Ljava/lang/reflect/Field;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/h;->j:Ljava/lang/reflect/Field;
return-object v0
.end method
.method static synthetic b(Lcom/squareup/wire/h;)Ljava/lang/reflect/Field;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/h;->k:Ljava/lang/reflect/Field;
return-object v0
.end method