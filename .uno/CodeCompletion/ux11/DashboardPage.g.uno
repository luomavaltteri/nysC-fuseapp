[Uno.Compiler.UxGenerated]
public partial class DashboardPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly DashboardPage __parent;
        [Uno.WeakReference] internal readonly DashboardPage __parentInstance;
        public Template(DashboardPage parent, DashboardPage parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> temp_Value_inst;
        global::Uno.UX.Property<string> temp1_Value_inst;
        static Template()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Panel();
            var temp = new Fuse.Controls.Text();
            temp_Value_inst = new nyC_FuseControlsTextControl_Value_Property(temp, __selector0);
            var temp1 = new Fuse.Controls.Text();
            temp1_Value_inst = new nyC_FuseControlsTextControl_Value_Property(temp1, __selector0);
            var temp2 = new Fuse.Controls.Text();
            var temp3 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "lineName");
            var temp4 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "arrivalTime");
            var temp5 = new Fuse.Controls.Rectangle();
            self.Color = float4(0.2666667f, 0.2666667f, 0.2666667f, 1f);
            self.Margin = float4(10f, 10f, 10f, 10f);
            self.Padding = float4(2f, 4f, 6f, 8f);
            temp2.Value = "This child will be drawn over the other child";
            temp.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
            temp.Bindings.Add(temp3);
            temp1.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
            temp1.Bindings.Add(temp4);
            temp5.Color = float4(0.9333333f, 0.9333333f, 0.9333333f, 1f);
            self.Children.Add(temp2);
            self.Children.Add(temp);
            self.Children.Add(temp1);
            self.Children.Add(temp5);
            return self;
        }
        static global::Uno.UX.Selector __selector0 = "Value";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    internal Fuse.Reactive.EventBinding temp_eb0;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router"
    };
    static DashboardPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public DashboardPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new Fuse.Reactive.Each();
        temp_Items_inst = new nyC_FuseReactiveEach_Items_Property(temp, __selector0);
        var temp1 = new Fuse.Reactive.JavaScript(__g_nametable);
        var temp2 = new Fuse.Controls.DockPanel();
        var temp3 = new Fuse.Controls.Grid();
        var temp4 = new Fuse.Controls.StackPanel();
        var temp5 = new Fuse.Controls.Text();
        var temp6 = new Fuse.Controls.Text();
        var temp7 = new Fuse.Controls.ScrollView();
        var temp8 = new Fuse.Controls.StackPanel();
        var temp9 = new Template(this, this);
        var temp10 = new Fuse.Reactive.DataBinding<object>(temp_Items_inst, "list");
        var temp11 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("goToHomePage");
        temp1.LineNumber = 3;
        temp1.FileName = "Pages/DashboardPage.ux";
        temp1.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Pages/DashboardPage.js"));
        temp2.Children.Add(temp3);
        temp3.RowCount = 3;
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp7);
        temp3.Children.Add(temp11);
        temp4.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp6);
        temp5.Value = "Time";
        temp5.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp6.Value = "Date";
        temp6.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp7.Children.Add(temp8);
        temp8.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp8.Children.Add(temp);
        temp.Templates.Add(temp9);
        temp.Bindings.Add(temp10);
        temp11.Text = "Get Started";
        temp11.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp11.Margin = float4(50f, 0f, 50f, 0f);
        global::Fuse.Gestures.Clicked.AddHandler(temp11, temp_eb0.OnEvent);
        temp11.Bindings.Add(temp_eb0);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        this.Children.Add(temp1);
        this.Children.Add(temp2);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
}
