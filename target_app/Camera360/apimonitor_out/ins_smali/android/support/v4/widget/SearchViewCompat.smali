.class public Landroid/support/v4/widget/SearchViewCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"
.field private static final IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
invoke-direct {v0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V
sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
invoke-direct {v0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V
sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
goto :goto_d
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
.registers 1
sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
return-object v0
.end method
.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
.registers 2
sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newSearchView(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public static setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
.registers 4
sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
iget-object v1, p1, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->mListener:Ljava/lang/Object;
invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method