.class public final Landroid/support/v4/view/a/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Landroid/support/v4/view/a/t;
.field private final b:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/a/u;
invoke-direct {v0}, Landroid/support/v4/view/a/u;-><init>()V
sput-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
:goto_d
return-void
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xf
if-lt v0, v1, :cond_1c
new-instance v0, Landroid/support/v4/view/a/s;
invoke-direct {v0}, Landroid/support/v4/view/a/s;-><init>()V
sput-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
goto :goto_d
:cond_1c
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_2a
new-instance v0, Landroid/support/v4/view/a/r;
invoke-direct {v0}, Landroid/support/v4/view/a/r;-><init>()V
sput-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
goto :goto_d
:cond_2a
new-instance v0, Landroid/support/v4/view/a/v;
invoke-direct {v0}, Landroid/support/v4/view/a/v;-><init>()V
sput-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
goto :goto_d
.end method
.method private constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
return-void
.end method
.method public static a()Landroid/support/v4/view/a/q;
.registers 2
new-instance v0, Landroid/support/v4/view/a/q;
sget-object v1, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
invoke-interface {v1}, Landroid/support/v4/view/a/t;->a()Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/view/a/q;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public final a(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
iget-object v1, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/t;->b(Ljava/lang/Object;I)V
return-void
.end method
.method public final a(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
iget-object v1, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/t;->a(Ljava/lang/Object;Z)V
return-void
.end method
.method public final b(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
iget-object v1, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/t;->a(Ljava/lang/Object;I)V
return-void
.end method
.method public final c(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/t;
iget-object v1, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/t;->c(Ljava/lang/Object;I)V
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Landroid/support/v4/view/a/q;
iget-object v2, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
if-nez v2, :cond_21
iget-object v2, p1, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
iget-object v3, p1, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Landroid/support/v4/view/a/q;->b:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_5
.end method