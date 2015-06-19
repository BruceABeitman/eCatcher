.class public Lorg/apache/log4j/v;
.super Lorg/apache/log4j/ag;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field public static final a:I = 0x1388
.field public static final b:Lorg/apache/log4j/v; = null
.field public static final c:Lorg/apache/log4j/v; = null
.field public static final d:Lorg/apache/log4j/v; = null
.field public static final e:Lorg/apache/log4j/v; = null
.field public static final f:Lorg/apache/log4j/v; = null
.field public static final g:Lorg/apache/log4j/v; = null
.field public static final h:Lorg/apache/log4j/v; = null
.field public static final i:Lorg/apache/log4j/v; = null
.field static final j:J = 0x3073071f1f02c436L
.field static k:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 5
const/4 v3, 0x0
const/4 v4, 0x7
new-instance v0, Lorg/apache/log4j/v;
const v1, 0x7fffffff
const-string v2, "OFF"
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->b:Lorg/apache/log4j/v;
new-instance v0, Lorg/apache/log4j/v;
const v1, 0xc350
const-string v2, "FATAL"
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;
new-instance v0, Lorg/apache/log4j/v;
const v1, 0x9c40
const-string v2, "ERROR"
const/4 v3, 0x3
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;
new-instance v0, Lorg/apache/log4j/v;
const/16 v1, 0x7530
const-string v2, "WARN"
const/4 v3, 0x4
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
new-instance v0, Lorg/apache/log4j/v;
const/16 v1, 0x4e20
const-string v2, "INFO"
const/4 v3, 0x6
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
new-instance v0, Lorg/apache/log4j/v;
const/16 v1, 0x2710
const-string v2, "DEBUG"
invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
new-instance v0, Lorg/apache/log4j/v;
const/16 v1, 0x1388
const-string v2, "TRACE"
invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
new-instance v0, Lorg/apache/log4j/v;
const/high16 v1, -0x8000
const-string v2, "ALL"
invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/v;->i:Lorg/apache/log4j/v;
return-void
.end method
.method protected constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/ag;-><init>(ILjava/lang/String;I)V
return-void
.end method
.method public static a(I)Lorg/apache/log4j/v;
.registers 2
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p0, v0}, Lorg/apache/log4j/v;->a(ILorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
return-object v0
.end method
.method public static a(ILorg/apache/log4j/v;)Lorg/apache/log4j/v;
.registers 2
sparse-switch p0, :sswitch_data_1c
:goto_3
return-object p1
:sswitch_4
sget-object p1, Lorg/apache/log4j/v;->i:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_7
sget-object p1, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_a
sget-object p1, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_d
sget-object p1, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_10
sget-object p1, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_13
sget-object p1, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_16
sget-object p1, Lorg/apache/log4j/v;->b:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_19
sget-object p1, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
goto :goto_3
:sswitch_data_1c
.sparse-switch
-0x80000000 -> :sswitch_4
0x1388 -> :sswitch_19
0x2710 -> :sswitch_7
0x4e20 -> :sswitch_a
0x7530 -> :sswitch_d
0x9c40 -> :sswitch_10
0xc350 -> :sswitch_13
0x7fffffff -> :sswitch_16
.end sparse-switch
.end method
.method public static a(Ljava/lang/String;)Lorg/apache/log4j/v;
.registers 2
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p0, v0}, Lorg/apache/log4j/v;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
.registers 4
if-nez p0, :cond_3
:goto_2
:cond_2
return-object p1
:cond_3
invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string v1, "ALL"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12
sget-object p1, Lorg/apache/log4j/v;->i:Lorg/apache/log4j/v;
goto :goto_2
:cond_12
const-string v1, "DEBUG"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
sget-object p1, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
goto :goto_2
:cond_1d
const-string v1, "INFO"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
sget-object p1, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
goto :goto_2
:cond_28
const-string v1, "WARN"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_33
sget-object p1, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
goto :goto_2
:cond_33
const-string v1, "ERROR"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
sget-object p1, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;
goto :goto_2
:cond_3e
const-string v1, "FATAL"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_49
sget-object p1, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;
goto :goto_2
:cond_49
const-string v1, "OFF"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_54
sget-object p1, Lorg/apache/log4j/v;->b:Lorg/apache/log4j/v;
goto :goto_2
:cond_54
const-string v1, "TRACE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5f
sget-object p1, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
goto :goto_2
:cond_5f
const-string v1, "\u0130NFO"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2
sget-object p1, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
goto :goto_2
.end method
.method private a(Ljava/io/ObjectInputStream;)V
.registers 3
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I
move-result v0
iput v0, p0, Lorg/apache/log4j/v;->l:I
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I
move-result v0
iput v0, p0, Lorg/apache/log4j/v;->n:I
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/v;->m:Ljava/lang/String;
iget-object v0, p0, Lorg/apache/log4j/v;->m:Ljava/lang/String;
if-nez v0, :cond_1d
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/v;->m:Ljava/lang/String;
:cond_1d
return-void
.end method
.method private a(Ljava/io/ObjectOutputStream;)V
.registers 3
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
iget v0, p0, Lorg/apache/log4j/v;->l:I
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V
iget v0, p0, Lorg/apache/log4j/v;->n:I
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V
iget-object v0, p0, Lorg/apache/log4j/v;->m:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V
return-void
.end method
.method static b(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method private d()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
sget-object v0, Lorg/apache/log4j/v;->k:Ljava/lang/Class;
if-nez v0, :cond_19
const-string v0, "org.apache.log4j.v"
invoke-static {v0}, Lorg/apache/log4j/v;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/v;->k:Ljava/lang/Class;
:goto_10
if-ne v1, v0, :cond_18
iget v0, p0, Lorg/apache/log4j/v;->l:I
invoke-static {v0}, Lorg/apache/log4j/v;->a(I)Lorg/apache/log4j/v;
move-result-object p0
:cond_18
return-object p0
:cond_19
sget-object v0, Lorg/apache/log4j/v;->k:Ljava/lang/Class;
goto :goto_10
.end method