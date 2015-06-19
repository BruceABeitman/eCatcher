.class public final Landroid/support/v7/internal/view/d;
.super Landroid/view/MenuInflater;
.source "SourceFile"
.field private static final a:[Ljava/lang/Class;
.field private static final b:[Ljava/lang/Class;
.field private final c:[Ljava/lang/Object;
.field private final d:[Ljava/lang/Object;
.field private e:Landroid/content/Context;
.field private f:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
const-class v2, Landroid/content/Context;
aput-object v2, v0, v1
sput-object v0, Landroid/support/v7/internal/view/d;->a:[Ljava/lang/Class;
sput-object v0, Landroid/support/v7/internal/view/d;->b:[Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V
iput-object p1, p0, Landroid/support/v7/internal/view/d;->e:Landroid/content/Context;
iput-object p1, p0, Landroid/support/v7/internal/view/d;->f:Ljava/lang/Object;
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
iput-object v0, p0, Landroid/support/v7/internal/view/d;->c:[Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v7/internal/view/d;->c:[Ljava/lang/Object;
iput-object v0, p0, Landroid/support/v7/internal/view/d;->d:[Ljava/lang/Object;
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/view/d;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/d;->e:Landroid/content/Context;
return-object v0
.end method
.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
.registers 14
const/4 v4, 0x0
const/4 v1, 0x1
const/4 v6, 0x0
new-instance v7, Landroid/support/v7/internal/view/f;
invoke-direct {v7, p0, p3}, Landroid/support/v7/internal/view/f;-><init>(Landroid/support/v7/internal/view/d;Landroid/view/Menu;)V
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
move-result v0
:cond_c
const/4 v2, 0x2
if-ne v0, v2, :cond_46
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v0
const-string v2, "menu"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_31
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v0
:goto_1f
move-object v2, v4
move v5, v6
move v3, v0
move v0, v6
:goto_23
if-nez v0, :cond_ce
packed-switch v3, :pswitch_data_d0
:cond_28
move v3, v5
:goto_29
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v5
move v9, v3
move v3, v5
move v5, v9
goto :goto_23
:cond_31
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Expecting menu, got "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_46
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v0
if-ne v0, v1, :cond_c
goto :goto_1f
:pswitch_4d
if-nez v5, :cond_28
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v3
const-string v8, "group"
invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_60
invoke-virtual {v7, p2}, Landroid/support/v7/internal/view/f;->a(Landroid/util/AttributeSet;)V
move v3, v5
goto :goto_29
:cond_60
const-string v8, "item"
invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_6d
invoke-virtual {v7, p2}, Landroid/support/v7/internal/view/f;->b(Landroid/util/AttributeSet;)V
move v3, v5
goto :goto_29
:cond_6d
const-string v8, "menu"
invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_7e
invoke-virtual {v7}, Landroid/support/v7/internal/view/f;->c()Landroid/view/SubMenu;
move-result-object v3
invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/internal/view/d;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
move v3, v5
goto :goto_29
:cond_7e
move-object v2, v3
move v3, v1
goto :goto_29
:pswitch_81
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v3
if-eqz v5, :cond_90
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_90
move-object v2, v4
move v3, v6
goto :goto_29
:cond_90
const-string v8, "group"
invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_9d
invoke-virtual {v7}, Landroid/support/v7/internal/view/f;->a()V
move v3, v5
goto :goto_29
:cond_9d
const-string v8, "item"
invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_ba
invoke-virtual {v7}, Landroid/support/v7/internal/view/f;->d()Z
move-result v3
if-nez v3, :cond_28
invoke-static {v7}, Landroid/support/v7/internal/view/f;->a(Landroid/support/v7/internal/view/f;)Landroid/support/v4/view/l;
move-result-object v3
if-eqz v3, :cond_b4
invoke-static {v7}, Landroid/support/v7/internal/view/f;->a(Landroid/support/v7/internal/view/f;)Landroid/support/v4/view/l;
:cond_b4
invoke-virtual {v7}, Landroid/support/v7/internal/view/f;->b()V
move v3, v5
goto/16 :goto_29
:cond_ba
const-string v8, "menu"
invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_28
move v0, v1
move v3, v5
goto/16 :goto_29
:pswitch_c6
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Unexpected end of document"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_ce
return-void
nop
:pswitch_data_d0
.packed-switch 0x1
:pswitch_c6
:pswitch_4d
:pswitch_81
.end packed-switch
.end method
.method static synthetic a()[Ljava/lang/Class;
.registers 1
sget-object v0, Landroid/support/v7/internal/view/d;->b:[Ljava/lang/Class;
return-object v0
.end method
.method static synthetic b()[Ljava/lang/Class;
.registers 1
sget-object v0, Landroid/support/v7/internal/view/d;->a:[Ljava/lang/Class;
return-object v0
.end method
.method static synthetic b(Landroid/support/v7/internal/view/d;)[Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/d;->d:[Ljava/lang/Object;
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/internal/view/d;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/d;->f:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic d(Landroid/support/v7/internal/view/d;)[Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/d;->c:[Ljava/lang/Object;
return-object v0
.end method
.method public final inflate(ILandroid/view/Menu;)V
.registers 7
instance-of v0, p2, Landroid/support/v4/a/a/a;
if-nez v0, :cond_8
invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
:goto_7
:cond_7
return-void
:cond_8
const/4 v1, 0x0
:try_start_9
iget-object v0, p0, Landroid/support/v7/internal/view/d;->e:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
move-result-object v1
invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
move-result-object v0
invoke-direct {p0, v1, v0, p2}, Landroid/support/v7/internal/view/d;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
:try_end_1a
.catchall {:try_start_9 .. :try_end_1a} :catchall_29
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_20
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_30
if-eqz v1, :cond_7
invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
goto :goto_7
:catch_20
move-exception v0
:try_start_21
new-instance v2, Landroid/view/InflateException;
const-string v3, "Error inflating menu XML"
invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catchall_29
:try_end_29
.catchall {:try_start_21 .. :try_end_29} :catchall_29
move-exception v0
if-eqz v1, :cond_2f
invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
:cond_2f
throw v0
:catch_30
move-exception v0
:try_start_31
new-instance v2, Landroid/view/InflateException;
const-string v3, "Error inflating menu XML"
invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:try_end_39
.catchall {:try_start_31 .. :try_end_39} :catchall_29
.end method