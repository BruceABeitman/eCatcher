.class public final Lcom/c/cp;
.super Ljava/lang/Object;
.field private static final a:Lcom/c/bp;
.field private static final b:Ljava/lang/reflect/Method;
.field private static final c:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 7
const/4 v0, 0x0
const-class v1, Lcom/c/cp;
invoke-static {v1}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v1
sput-object v1, Lcom/c/cp;->a:Lcom/c/bp;
:try_start_9
const-string v1, "u\u000bG./}\u0001\r33:6Z/4q\u0008s./d\u0000Q()q\u0016"
:try_end_b
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_b} :catch_91
invoke-static {v1}, Lcom/c/cp;->b(Ljava/lang/String;)[C
move-result-object v1
invoke-static {v1}, Lcom/c/cp;->a([C)Ljava/lang/String;
move-result-object v1
:try_start_13
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
const-string v1, "s\u0000W"
:try_end_19
.catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_19} :catch_91
invoke-static {v1}, Lcom/c/cp;->b(Ljava/lang/String;)[C
move-result-object v1
invoke-static {v1}, Lcom/c/cp;->a([C)Ljava/lang/String;
move-result-object v1
const/4 v3, 0x1
:try_start_22
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Ljava/lang/String;
aput-object v5, v3, v4
invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_2c
.catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2c} :catch_91
move-result-object v1
:try_start_2d
const-string v3, "s\u0000W\u0015.`"
:try_end_2f
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2f} :catch_a4
invoke-static {v3}, Lcom/c/cp;->b(Ljava/lang/String;)[C
move-result-object v3
invoke-static {v3}, Lcom/c/cp;->a([C)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x2
:try_start_38
new-array v4, v4, [Ljava/lang/Class;
const/4 v5, 0x0
const-class v6, Ljava/lang/String;
aput-object v6, v4, v5
const/4 v5, 0x1
const-class v6, Ljava/lang/Integer;
aput-object v6, v4, v5
invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_47
.catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_47} :catch_a4
move-result-object v0
:goto_48
sput-object v1, Lcom/c/cp;->b:Ljava/lang/reflect/Method;
sput-object v0, Lcom/c/cp;->c:Ljava/lang/reflect/Method;
sget-object v0, Lcom/c/cp;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "u\u000bG./}\u0001\r33:6Z/4q\u0008s./d\u0000Q()q\u0016\u0000;%`E\u001e|"
invoke-static {v2}, Lcom/c/cp;->b(Ljava/lang/String;)[C
move-result-object v2
invoke-static {v2}, Lcom/c/cp;->a([C)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/cp;->b:Ljava/lang/reflect/Method;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
sget-object v0, Lcom/c/cp;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "u\u000bG./}\u0001\r33:6Z/4q\u0008s./d\u0000Q()q\u0016\u0000;%`,M(`)E"
invoke-static {v2}, Lcom/c/cp;->b(Ljava/lang/String;)[C
move-result-object v2
invoke-static {v2}, Lcom/c/cp;->a([C)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/cp;->c:Ljava/lang/reflect/Method;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
return-void
:catch_91
move-exception v1
move-object v2, v1
move-object v1, v0
:goto_94
sget-object v3, Lcom/c/cp;->a:Lcom/c/bp;
const-string v4, "u\u000bG./}\u0001\r33:6Z/4q\u0008s./d\u0000Q()q\u0016"
invoke-static {v4}, Lcom/c/cp;->b(Ljava/lang/String;)[C
move-result-object v4
invoke-static {v4}, Lcom/c/cp;->a([C)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4, v2}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_48
:catch_a4
move-exception v2
goto :goto_94
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;I)I
.registers 6
sget-object v0, Lcom/c/cp;->c:Ljava/lang/reflect/Method;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
const/4 v2, 0x1
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/c/cp;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_18
:goto_17
return p1
:cond_18
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result p1
goto :goto_17
.end method
.method private static varargs a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
const/4 v1, 0x0
if-nez p0, :cond_5
move-object v0, v1
:goto_4
return-object v0
:cond_5
const/4 v0, 0x0
:try_start_6
invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_end_c
.catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_c} :catch_d
.catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_c} :catch_19
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_c} :catch_29
goto :goto_4
:catch_d
move-exception v0
sget-object v2, Lcom/c/cp;->a:Lcom/c/bp;
invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_4
:catch_19
move-exception v0
sget-object v1, Lcom/c/cp;->a:Lcom/c/bp;
invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_29
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
sget-object v1, Lcom/c/cp;->a:Lcom/c/bp;
invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_3e
check-cast v0, Ljava/lang/Error;
throw v0
:cond_3e
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_45
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_45
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
sget-object v0, Lcom/c/cp;->b:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
invoke-static {v0, v1}, Lcom/c/cp;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method private static a([C)Ljava/lang/String;
.registers 7
array-length v0, p0
const/4 v1, 0x0
const/4 v2, 0x1
if-gt v0, v2, :cond_29
:cond_5
move-object v2, p0
move v3, v1
:goto_7
aget-char v5, p0, v1
rem-int/lit8 v4, v3, 0x5
packed-switch v4, :pswitch_data_36
const/16 v4, 0x40
:goto_10
xor-int/2addr v4, v5
int-to-char v4, v4
aput-char v4, p0, v1
add-int/lit8 v1, v3, 0x1
if-nez v0, :cond_28
move-object p0, v2
move v3, v1
move v1, v0
goto :goto_7
:pswitch_1c
const/16 v4, 0x14
goto :goto_10
:pswitch_1f
const/16 v4, 0x65
goto :goto_10
:pswitch_22
const/16 v4, 0x23
goto :goto_10
:pswitch_25
const/16 v4, 0x5c
goto :goto_10
:cond_28
move-object p0, v2
:cond_29
if-gt v0, v1, :cond_5
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
return-object v0
nop
:pswitch_data_36
.packed-switch 0x0
:pswitch_1c
:pswitch_1f
:pswitch_22
:pswitch_25
.end packed-switch
.end method
.method private static b(Ljava/lang/String;)[C
.registers 4
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
move-object v1, v0
:goto_5
array-length v0, v0
const/4 v2, 0x2
if-ge v0, v2, :cond_13
if-eqz v0, :cond_14
const/4 v0, 0x0
aget-char v2, v1, v0
xor-int/lit8 v2, v2, 0x40
int-to-char v2, v2
aput-char v2, v1, v0
:cond_13
return-object v1
:cond_14
move-object v0, v1
goto :goto_5
.end method