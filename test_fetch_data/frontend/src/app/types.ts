interface Data {
    map(arg0: (item: any) => import("react").JSX.Element): import("react").ReactNode;
    name: string;
    age: number;
    email: string;
    profilePictureUrl: string;
  }
  
  export default Data;
  