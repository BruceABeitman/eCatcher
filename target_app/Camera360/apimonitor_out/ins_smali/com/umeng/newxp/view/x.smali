.class  Lcom/umeng/newxp/view/x;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;
.field private static synthetic b:[I
.field final synthetic a:Lcom/umeng/newxp/view/w;
.method constructor <init>(Lcom/umeng/newxp/view/w;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a()[I
.registers 3
sget-object v0, Lcom/umeng/newxp/view/x;->b:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->values()[Lcom/umeng/newxp/controller/XpListenersCenter$FitType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->BROWSE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;
invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44
sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->DOWNLOAD:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;
invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42
:try_start_1e
:goto_1e
sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->NEW:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;
invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40
:goto_27
:try_start_27
sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->OPEN:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;
invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e
sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->PHONE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;
invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c
sput-object v0, Lcom/umeng/newxp/view/x;->b:[I
goto :goto_4
:catch_3c
move-exception v1
goto :goto_39
:catch_3e
move-exception v1
goto :goto_30
:catch_40
move-exception v1
goto :goto_27
:catch_42
move-exception v1
goto :goto_1e
:catch_44
move-exception v1
goto :goto_15
.end method
.method public onFitType(Landroid/view/View;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V
.registers 7
iget-object v0, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/a/c;->H(Landroid/content/Context;)I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-static {}, Lcom/umeng/newxp/view/x;->a()[I
move-result-object v1
invoke-virtual {p3}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_54
:goto_1b
return-void
:pswitch_1c
iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/b;->w(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_1b
:pswitch_2a
iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/b;->v(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_1b
:pswitch_38
iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/b;->u(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_1b
:pswitch_46
iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/b;->x(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_1b
:pswitch_data_54
.packed-switch 0x1
:pswitch_1c
:pswitch_2a
:pswitch_38
:pswitch_46
.end packed-switch
.end method