.class final Lcom/bbm/ui/activities/yy;
.super Ljava/lang/Object;
.source "NewGroupActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewGroupActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/yy;->a:Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/yy;->a:Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-static {v0, p2}, Lcom/bbm/ui/activities/NewGroupActivity;->a(Lcom/bbm/ui/activities/NewGroupActivity;Z)Z

    return-void
.end method
