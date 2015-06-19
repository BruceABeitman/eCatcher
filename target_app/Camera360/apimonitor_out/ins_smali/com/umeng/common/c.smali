.class public Lcom/umeng/common/c;
.super Ljava/lang/Object;
.source "Res.java"
.field private static final a:Ljava/lang/String;
.field private static b:Lcom/umeng/common/c;
.field private static d:Ljava/lang/Class;
.field private static e:Ljava/lang/Class;
.field private static f:Ljava/lang/Class;
.field private static g:Ljava/lang/Class;
.field private static h:Ljava/lang/Class;
.field private static i:Ljava/lang/Class;
.field private static j:Ljava/lang/Class;
.field private c:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const-class v0, Lcom/umeng/common/c;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->a:Ljava/lang/String;
sput-object v1, Lcom/umeng/common/c;->d:Ljava/lang/Class;
sput-object v1, Lcom/umeng/common/c;->e:Ljava/lang/Class;
sput-object v1, Lcom/umeng/common/c;->f:Ljava/lang/Class;
sput-object v1, Lcom/umeng/common/c;->g:Ljava/lang/Class;
sput-object v1, Lcom/umeng/common/c;->h:Ljava/lang/Class;
sput-object v1, Lcom/umeng/common/c;->i:Ljava/lang/Class;
sput-object v1, Lcom/umeng/common/c;->j:Ljava/lang/Class;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
:try_start_9
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".R$drawable"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->e:Ljava/lang/Class;
:try_end_29
.catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_29} :catch_ea
:goto_29
:try_start_29
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".R$layout"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->f:Ljava/lang/Class;
:try_end_49
.catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_49} :catch_f6
:try_start_49
:goto_49
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".R$id"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->d:Ljava/lang/Class;
:try_end_69
.catch Ljava/lang/ClassNotFoundException; {:try_start_49 .. :try_end_69} :catch_102
:goto_69
:try_start_69
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".R$anim"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->g:Ljava/lang/Class;
:try_end_89
.catch Ljava/lang/ClassNotFoundException; {:try_start_69 .. :try_end_89} :catch_10e
:goto_89
:try_start_89
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".R$style"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->h:Ljava/lang/Class;
:try_end_a9
.catch Ljava/lang/ClassNotFoundException; {:try_start_89 .. :try_end_a9} :catch_11a
:try_start_a9
:goto_a9
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".R$string"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->i:Ljava/lang/Class;
:try_end_c9
.catch Ljava/lang/ClassNotFoundException; {:try_start_a9 .. :try_end_c9} :catch_125
:goto_c9
:try_start_c9
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".R$array"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/umeng/common/c;->j:Ljava/lang/Class;
:try_end_e9
.catch Ljava/lang/ClassNotFoundException; {:try_start_c9 .. :try_end_e9} :catch_130
:goto_e9
return-void
:catch_ea
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_29
:catch_f6
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_49
:catch_102
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_69
:catch_10e
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_89
:catch_11a
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a9
:catch_125
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c9
:catch_130
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e9
.end method
.method private a(Ljava/lang/Class;Ljava/lang/String;)I
.registers 7
if-nez p1, :cond_45
sget-object v0, Lcom/umeng/common/c;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "getRes(null,"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "ResClass is not initialized. Please make sure you have added neccessary resources. Also make sure you have "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/common/c;->c:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ".R$* configured in obfuscation. field="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_45
:cond_45
invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
:try_end_4c
.catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4e
move-result v0
:goto_4d
return v0
:catch_4e
move-exception v0
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "getRes("
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
const-string/jumbo v2, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. "
invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
goto :goto_4d
.end method
.method public static a(Landroid/content/Context;)Lcom/umeng/common/c;
.registers 2
sget-object v0, Lcom/umeng/common/c;->b:Lcom/umeng/common/c;
if-nez v0, :cond_b
new-instance v0, Lcom/umeng/common/c;
invoke-direct {v0, p0}, Lcom/umeng/common/c;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/umeng/common/c;->b:Lcom/umeng/common/c;
:cond_b
sget-object v0, Lcom/umeng/common/c;->b:Lcom/umeng/common/c;
return-object v0
.end method
.method public a(Ljava/lang/String;)I
.registers 3
sget-object v0, Lcom/umeng/common/c;->g:Ljava/lang/Class;
invoke-direct {p0, v0, p1}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public b(Ljava/lang/String;)I
.registers 3
sget-object v0, Lcom/umeng/common/c;->d:Ljava/lang/Class;
invoke-direct {p0, v0, p1}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public c(Ljava/lang/String;)I
.registers 3
sget-object v0, Lcom/umeng/common/c;->e:Ljava/lang/Class;
invoke-direct {p0, v0, p1}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public d(Ljava/lang/String;)I
.registers 3
sget-object v0, Lcom/umeng/common/c;->f:Ljava/lang/Class;
invoke-direct {p0, v0, p1}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public e(Ljava/lang/String;)I
.registers 3
sget-object v0, Lcom/umeng/common/c;->h:Ljava/lang/Class;
invoke-direct {p0, v0, p1}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public f(Ljava/lang/String;)I
.registers 3
sget-object v0, Lcom/umeng/common/c;->i:Ljava/lang/Class;
invoke-direct {p0, v0, p1}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public g(Ljava/lang/String;)I
.registers 3
sget-object v0, Lcom/umeng/common/c;->j:Ljava/lang/Class;
invoke-direct {p0, v0, p1}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I
move-result v0
return v0
.end method